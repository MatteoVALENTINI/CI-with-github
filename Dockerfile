# Dockerfile to build a flask app

FROM python:3.8-slim
WORKDIR /app

# Copy the necessary files
COPY . /app
# Install
RUN pip install -r requirements.txt
# Expose 
EXPOSE 5000
# Command to execute the app
CMD ["flask", "run", "--host=0.0.0.0"]


