FROM python:latest
ENV PATH="/app/venv/bin:$PATH"
WORKDIR /app
RUN python -m venv /app/venv
COPY app.py .
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "python", "app.py"]