# Use an official Python runtime as a parent image
FROM python:3.9
ENV DEBIAN_FRONTEND noninteractive

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME World

# Run Jupyter Notebook when the container launches
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
