# Dockerized Flask Web App

A **Flask** web application with user registration/login and a feedback system, containerized with **Docker**.

## Features

- User registration & login with **hashed passwords** (Werkzeug)
- Session management
- Contact/feedback form persisted to **SQLite** via SQLAlchemy
- Fully containerized — build once, run anywhere

## Tech stack

- **Python / Flask** — web framework
- **Flask-SQLAlchemy** — ORM
- **Docker** — containerization

## Run with Docker

```bash
docker build -t flask-app .
docker run -p 5000:5000 -e FLASK_SECRET_KEY=$(openssl rand -hex 24) flask-app
```

## Run locally

```bash
pip install -r requirement.txt
export FLASK_SECRET_KEY=your-secret-here
python app.py
```

App runs at `http://localhost:5000`.

> The secret key is read from the `FLASK_SECRET_KEY` environment variable — never hardcoded. The local SQLite database is gitignored.
