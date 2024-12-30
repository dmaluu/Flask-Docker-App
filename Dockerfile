# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set environment variables to ensure Python runs in an optimized way
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Specify the command to run the application (replace "app.py" with your project's entry point)
CMD ["python", "app.py"]