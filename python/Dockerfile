# Используем Python 3.8
FROM python:3.12

WORKDIR /app

# Копируем файлы проекта
COPY . /app

# Устанавливаем зависимости
RUN pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]
