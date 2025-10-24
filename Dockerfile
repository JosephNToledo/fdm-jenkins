FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expose Flask default port
EXPOSE 5000

CMD ["python", "josephtoledo.py"]
