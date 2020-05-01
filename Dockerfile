FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
#hadolint ignore=DL3013
COPY app.py /app/
COPY requirements.txt /app/
COPY model_data/ /app/model_data/

# Install packages from requirements.txt
#RUN pip install --upgrade &&\
RUN  pip install -r requirements.txt
  

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
