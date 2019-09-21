FROM python:3

RUN pip install pipenv

WORKDIR /app

# -- Adding Pipfiles
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

RUN pipenv install

COPY . .

RUN apt-get update

CMD ["pipenv", "run", "python", "app.py"]
