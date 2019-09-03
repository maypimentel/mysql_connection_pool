FROM python:3.7-alpine
    ENV APPDIR /app
    WORKDIR ${APPDIR}
    RUN apk add --no-cache gcc mysql-client make
    COPY requirements.txt requirements.txt
    RUN pip install -r requirements.txt
    COPY . ${APPDIR}
    RUN pip install .
    CMD ["python", "run.py"]