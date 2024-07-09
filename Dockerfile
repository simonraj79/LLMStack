# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    pkg-config \
    libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . .

# Install pip and other dependencies
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port 3000
EXPOSE 3000

# Run LLMStack when the container launches
CMD ["llmstack"]
