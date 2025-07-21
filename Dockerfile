FROM Python:3.11-slim

WORKDIR /python-app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["Python", "app.py"]