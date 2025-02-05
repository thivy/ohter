FROM python:3.10-slim
WORKDIR /app
# Install system dependencies
# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy application code
COPY . .
EXPOSE 7860
CMD ["python", "app.py"]
