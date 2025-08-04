# Start from an official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependencies file and install them
# We do this in a separate step to leverage Docker's layer caching.
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# The container will run on port 5000, but we won't expose it here.
# The devcontainer.json will handle the port forwarding for us.
# So, CMD is not strictly needed for dev, but it's good practice for production.
# We will let the dev container manage the command.
