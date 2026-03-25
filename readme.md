# 🚀 GitHub Actions Capstone Project

## 📌 Overview

This is a simple Flask application used to demonstrate a complete CI/CD pipeline using GitHub Actions.

## 🛠️ Tech Stack

* Python (Flask)
* Docker
* GitHub Actions

## ▶️ Run Locally

```bash
pip install -r requirements.txt
python app.py
```

App runs at:

```
http://localhost:5000
```

## 🧪 Test

```bash
./test.sh
```

## 🐳 Docker

Build image:

```bash
docker build -t capstone-app .
```

Run container:

```bash
docker run -p 5000:5000 capstone-app
```

## 📦 Features

* Simple API with `/health` endpoint
* Dockerized application
* Ready for CI/CD pipeline

---

Built as part of DevOps learning 🚀
# 🚀 GitHub Actions Capstone

![PR Pipeline](https://github.com/priyankaraut19/github-actions-capstone/actions/workflows/pr-pipeline.yml/badge.svg)
![Main Pipeline](https://github.com/priyankaraut19/github-actions-capstone/actions/workflows/docker-publish.yml/badge.svg)
![Health Check](https://github.com/priyankaraut19/github-actions-capstone/actions/workflows/health-check.yml/badge.svg)
