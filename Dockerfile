FROM python:3.8

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN python -m spacy download en_core_web_sm

CMD [ "python", "./DASentimental.py" ]