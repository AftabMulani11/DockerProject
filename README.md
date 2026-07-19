<div align="center">

# 🐳 Dockerized Flask Web App

**A containerized Flask app with secure auth — hashed passwords, session management, and a one-command Docker build.**

![Flask](https://img.shields.io/badge/Flask-0b0b0e?style=for-the-badge&logo=flask&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-0b0b0e?style=for-the-badge&logo=docker&logoColor=2496ED)
![SQLite](https://img.shields.io/badge/SQLite-0b0b0e?style=for-the-badge&logo=sqlite&logoColor=003B57)

</div>

## What it does

A multi-page Flask web app demonstrating containerized deployment and secure user management:

| Route | Method | Purpose |
|---|---|---|
| `/` | GET/POST | Login |
| `/register` | GET/POST | New-user signup |
| `/home` | GET | Authenticated landing |
| `/profile` | GET | User profile |
| `/contact` | GET/POST | Feedback / contact form |
| `/logout` | GET | End session |

## 🔐 Security

- **Passwords are hashed** with Werkzeug (`generate_password_hash` / `check_password_hash`) — no plaintext credentials in the database
- **`SECRET_KEY` from the environment** — never hardcoded; sessions fall back safely in dev
- **Database is gitignored** — `instance/*.db` is out of version control, so no user data ships in the repo

## Run with Docker

```bash
docker build -t flask-app .
docker run -e SECRET_KEY=$(openssl rand -hex 16) -p 5000:5000 flask-app
# open http://localhost:5000
```

## Run locally

```bash
pip install -r requirement.txt
export SECRET_KEY=$(openssl rand -hex 16)
python app.py
```

## Tech stack

- **Flask** — routing, sessions, Jinja2 templates (`templates/`, `static/`)
- **SQLite** — user + feedback storage via the `instance/` folder
- **Docker** — single-stage image built from the [dockerfile](dockerfile)

> Demonstrates the containerization and secure-Flask fundamentals behind my larger AWS projects ([GreenStay](https://github.com/AftabMulani11/greenstay), [CryptoFolio](https://github.com/AftabMulani11/cryptofolio)).
