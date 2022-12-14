import telebot
from telebot import types
import psycopg2
from datetime import datetime

conn = psycopg2.connect(dbname='mtucischedule', user='postgres', password='321123', host='localhost', port='5432')
conn.autocommit = True
cursor = conn.cursor()

token = "5666794430:AAGMXMjNwMy-q6b4MYR1ridu4MBsPSIWdAE"
bot = telebot.TeleBot(token)
ping_counter = 0

days_list = ["понедельник", "вторник", "среда", "четверг", "пятница"]
week_number = datetime.today().isocalendar()[1] % 2

@bot.message_handler(commands=['start'])
def start_message(message):
    keyboard = telebot.types.ReplyKeyboardMarkup()
    keyboard.row("Расписание на текущую неделю", "Расписание на следующую неделю")
    keyboard.row("Понедельник", "Вторник", "Среда", "Четверг", "Пятница")
    bot.send_message(message.chat.id, "Расписание на какой день вы хотите увидеть?", reply_markup=keyboard)

@bot.message_handler(commands=['week'])
def weekNumber(message):
    if week_number == 1:
        bot.send_message(message.chat.id, "Сейчас идёт нечётная неделя")
    else:
        bot.send_message(message.chat.id, "Сейчас идёт чётная неделя")

@bot.message_handler(commands=['mtuci'])
def weekNumber(message):
    bot.send_message(message.chat.id, "Сайт МТУСИ: https://mtuci.ru/")

@bot.message_handler(commands=['help'])
def weekNumber(message):
    bot.send_message(message.chat.id, "Описание доступных команд:\n""/help - Помощь по доступным командам\n""/week - Чётность текущей недели\n""/mtuci - Ссылка на официальный сайт МТУСИ\n""Нажмите на кнопку нужного дня или недели для вывода расписания")

@bot.message_handler(content_types='types')
def reply(message):
    if message.text.lower() in days_list:
        if week_number == 1:
            cursor.execute(f"SELECT * FROM timetable WHERE day = '(message.text.lower()) Нечёт' ORDER BY id")
        else:
            cursor.execute(f"SELECT * FROM timetable WHERE day = '(message.text.lower()) Чёт' ORDER BY id")
        records = list(cursor.fetchall())
        text = f'{message.text}:\n'
        text += '____________________________________________________________\n'
        for i in records:
            text += f"Предмет: {i[2]} Аудитория: {i[3]} Время: {i[4]} \n"
        text += '____________________________________________________________'
        bot.send_message(message.chat.id, text)
    elif 'текущую' in message.text.lower():
        text = ""
        for i in days_list:
            if week_number == 1:
                cursor.execute(f"SELECT * FROM timetable WHERE day = '{i} 1' ORDER BY id")
            else:
                cursor.execute(f"SELECT * FROM timetable WHERE day = '{i} 2' ORDER BY id")
            records = list(cursor.fetchall())
            text += f'{i.title()}:\n'
            text += '____________________________________________________________\n'
            if not records:
                text += 'Выходной\n'
            for j in records:
                text += f"Предмет: {j[2]} Аудитория: {[3]} Время: {j[4]} \n"
            text += "____________________________________________________________"
            text += "\n\n"
        bot.send_message(message.chat.id, text)
    elif 'следующую' in message.text.lower():
        text = ""
        for i in days_list:
            if week_number + 1 == 1:
                cursor.execute(f"SELECT * FROM timetable WHERE day = '{i} 1' ORDER BY id")
            else:
                cursor.execute(f"SELECT * FROM timetable WHERE day = '{i} 2' ORDER BY id")
            records = list(cursor.fetchall())
            text += f'{i.title()}:\n'
            text += '____________________________________________________________\n'
            if not records:
                text += 'Выходной\n'
            for j in records:
                text += f"Предмет: {j[2]} Аудитория: {j[3]} Время: {j[4]} \n"
            text += '____________________________________________________________'
            text += '\n\n'
        bot.send_message(message.chat.id, text)
    else:
        bot.send_message(message.chat.id, "Извините, я Вас не понял")

bot.infinity_polling()
