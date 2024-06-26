FROM python:3.9
WORKDIR /server
COPY . /server
RUN pip install -r requirements.txt
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--log-config", "/server/log_config.ini"]