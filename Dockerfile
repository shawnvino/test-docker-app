FROM python:alpine3.12

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
