FROM python:3.7-alpine
ENV APPDIR /app
WORKDIR ${APPDIR}
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . ${APPDIR}
CMD ["python", "run.py"]