FROM python:3.9.18

ENV SYNC_HOST "0.0.0.0"
ENV SYNC_PORT "8080"
ENV SYNC_BASE "/data"

WORKDIR /

COPY requirements.txt .

RUN python -m pip install --upgrade pip && \
    python -m pip install -r ./requirements.txt

EXPOSE ${SYNC_PORT}

CMD ["python", "-m", "anki.syncserver"]
