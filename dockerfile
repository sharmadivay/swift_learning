# Use the official Swift image
FROM swift:latest

# Set the working directory inside the container
WORKDIR /app

# Copy all Swift files into the container
COPY *.swift .

# Command to run all Swift files
CMD swift *.swift
