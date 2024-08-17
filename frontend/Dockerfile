# Use the official Golang image as the base image
FROM golang:1.18-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the go.mod files and download dependencies
COPY go.mod ./
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o simple-fortune-cookie

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./simple-fortune-cookie"]
