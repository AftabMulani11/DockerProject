FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install -r requirement.txt
RUN apt-get update
RUN apt-get install -y libgl1-mesa-glx
EXPOSE 5000
CMD ["python", "app.py"]
