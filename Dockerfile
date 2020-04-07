FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app 

# Copy source code to WORKDIR
COPY . app.py /app/

# Install packages
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013

# Expose port
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]