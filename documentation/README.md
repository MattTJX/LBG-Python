This repository contains the source code for an LBG (Learning-Based Guidance) learning-oriented CRUD-based RESTful API using standard Flask routing. The code has been converted from the original NodeJS solution as closely as possible. It should be noted that this version uses simple prints to STDOUT instead of a formalized logger.

Prerequisites
Before running the code, ensure you have the following dependencies installed:

Python (version X.X.X)
Flask (version X.X.X)
Flask API (version X.X.X)
SQL Alchemy (version X.X.X)
Installation
Clone the repository:

bash
Copy code
git clone [repository-url]
Change to the project directory:

bash
Copy code
cd project-directory
Install the required dependencies:

bash
Copy code
pip install -r requirements.txt
Usage
Run the API:

bash
Copy code
python api.py --PORT [port-number]
Replace [port-number] with the desired port number (default is 8080).

Access the API using a REST client or web browser:

To create an item: Send a POST request to http://localhost:[port-number]/create with the item details in the request body.

To read all items: Send a GET request to http://localhost:[port-number]/read.

To read a specific item: Send a GET request to http://localhost:[port-number]/read/[item-id], replacing [item-id] with the desired item ID.

To update an item: Send a PUT request to http://localhost:[port-number]/update/[item-id], replacing [item-id] with the ID of the item to update. Include the updated item details in the request body.

To delete an item: Send a DELETE request to http://localhost:[port-number]/delete/[item-id], replacing [item-id] with the ID of the item to delete.

Contributing
Contributions to this project are welcome. To contribute, follow these steps:

Fork the repository.
Create a new branch.
Make your changes and commit them.
Push the changes to your fork.
Submit a pull request.
License
This project is licensed under the [License Name].