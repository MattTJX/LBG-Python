FROM python:3.7 # Define the base image
COPY . . # Copy the contents of the repo
RUN pip3 install -r requirements.txt # Install the dependencies from requirement.txt 
EXPOSE 8080 # Instruct docker that the container will be listening on 8080
ENTRYPOINT ["python3", "lbg.py"] # Configures the image so that the containers