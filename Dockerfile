FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY healthie_help_bot.py .
# Health endpoint on :8080 for Railway/Render health checks
EXPOSE 8080
CMD ["python", "healthie_help_bot.py"]
