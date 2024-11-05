# Base image with Python
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file (if you have one) or specify dependencies directly
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory into the container
COPY . .

# Expose the port Streamlit will run on
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
