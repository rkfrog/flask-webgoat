# Base image from 
FROM roskad.jfrog.io/dockerhub-remote/python:3.8

# Create app directory
WORKDIR /app
COPY . /app/

# # Create virtual env
# RUN python3 -m venv .venv \
#     && . .venv/bin/activate \
#     && pip install --upgrade setuptools wheel \
#     && pip install -r requirements.txt

# Install dependencies
RUN pip install --upgrade setuptools wheel \
    && pip install -r requirements.txt

# Expose the port the app runs in
EXPOSE 5000

# Serve the app
CMD ["run.py", "flask", "run"]