# 🚀 GNUnet Docker Build & Release

This repository provides everything needed to **build GNUnet from source** inside a clean Ubuntu container, with full support for Docker and GitHub Actions to automate builds and releases.

> Compatible with the latest stable version: **GNUnet 0.24.x**

---

## 📦 Features

- ✅ Optimized Dockerfile for reproducible GNUnet builds  
- ✅ Automatic installation of all required GNUnet dependencies  
- ✅ Support for standalone Docker image creation  
- ✅ GitHub Actions workflow for CI/CD and release publishing  
- ✅ Ready-to-use environment for testing and development  

---

## 🐳 How to Use the Dockerfile

```bash
git clone https://github.com/root-hunter/gnunet-builder
cd gnunet-builder
docker build -t gnunet:latest .
