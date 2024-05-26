# Use the official Python image as the base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Run Django migrations
RUN ./manage.py makemigrations
RUN ./manage.py migrate

# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]