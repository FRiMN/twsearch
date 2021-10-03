FROM python:3

WORKDIR /usr/src/app
ENV PYTHONPATH=.

RUN apt update && apt install -y libpython3-dev

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD "python /usr/src/app/parser.py"
