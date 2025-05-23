# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV PORT 8080
ENV STREAMLIT_SERVER_PORT 8080
ENV STREAMLIT_SERVER_ENABLECORS false
ENV STREAMLIT_SERVER_ENABLEXSRFPROTECTION false
ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS false

EXPOSE 8080

CMD ["streamlit", "run", "app.py", "--server.port=8080"]
