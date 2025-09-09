# Use python base image 
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Install Dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code 
COPY . .

# Expose Flask Port 
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"] 
