# Define the base image
FROM python:3.11
# Copy the contents of the repo
COPY . .
# Install the dependencies from requirement.txt 
RUN pip3 install -r requirements.txt
# Instruct docker that the container will be listening on 8080
ENV PORT=5000
# Configures the image so that the containers can be run as executables. Python is the command and lby.py is the executable
ENTRYPOINT python3 lbg.py --PORT ${PORT}