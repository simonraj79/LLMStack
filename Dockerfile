# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install LLMStack dependencies
RUN pip install llmstack

# Expose port 3000
EXPOSE 3000

# Run LLMStack when the container launches
CMD ["llmstack"]
