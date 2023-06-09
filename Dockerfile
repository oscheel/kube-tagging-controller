# Use a Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the controller code into the container
COPY controller.py .

# Install dependencies
RUN pip install kubernetes boto3

# Run the controller script
CMD ["python", "controller.py"]

