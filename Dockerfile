# Define the base image
FROM python:3.9
# Copy the contents of the repo
COPY . .
# Install the dependencies from requirement.txt 
RUN pip3 install -r requirements.txt
# Instruct docker that the container will be listening on 8080
EXPOSE 8080
# Configures the image so that the containers
ENTRYPOINT ["python3", "lbg.py"]