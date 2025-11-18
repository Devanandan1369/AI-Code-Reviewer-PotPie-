# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

# Expose port (Render uses PORT env)
EXPOSE 10000

# Use START_CMD to decide what to run (Streamlit or FastAPI)
CMD ["sh", "-c", "$START_CMD"]
