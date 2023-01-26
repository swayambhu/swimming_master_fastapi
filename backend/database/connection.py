from src.config import SETTINGS
import time
from termcolor import colored
import mysql.connector

config = {
    "user": SETTINGS.get("DATABASE_USERNAME"),
    "password": SETTINGS.get("DATABASE_PASSWORD"),
    "host": SETTINGS.get("DATABASE_HOSTNAME"),
    "port": SETTINGS.get("DATABASE_PORT"),
    "database": SETTINGS.get("DATABASE_NAME"),
    
}

while True:
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()
        print(colored("Database connection Successful", "green"))
        break
    except Exception as e:
        print(colored("Database connection failed", "red"))
        print(e)
        time.sleep(2)

