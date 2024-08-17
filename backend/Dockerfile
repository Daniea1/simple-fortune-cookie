# Stage 1: Build the Go application
FROM golang:1.18-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go files and download the dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the application port (if needed)
EXPOSE 9000

# Run the application
CMD ["./main"]
