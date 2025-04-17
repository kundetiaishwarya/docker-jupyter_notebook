

```markdown
# Transformer Jupyter Notebook (Dockerized)

This project runs a pre-configured [TensorFlow Jupyter Notebook](https://hub.docker.com/r/tensorflow/tensorflow) environment with support for Hugging Face Transformers — all inside Docker. No local setup needed!


## Project Structure


hello-docker/
├── Dockerfile
├── docker-compose.yml
├── translator.ipynb   
└── captions_english.srt              



## Run it with Docker Compose

Make sure you have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Step 1: Build and run

bash
docker compose up --build


Then open your browser to:

👉 [http://localhost:8000](http://localhost:8000)  
🔑 **Jupyter Token:** `iambatman`

Your `translator.ipynb` will be visible in the file tree.

---

## Features

- ✅ Jupyter Lab pre-installed
- ✅ TensorFlow and Transformers support
- ✅ Automatically mounts your local folder as a volume
- ✅ Token-protected access (`JUPYTER_TOKEN`)
- ✅ Restart policy for reliability (`unless-stopped`)

---

## Customize

If you want to add more libraries or change the Python environment, edit the `Dockerfile`:

```Dockerfile
FROM tensorflow/tensorflow:latest-jupyter
WORKDIR /tf

# Optional: Install more Python packages
RUN pip install transformers tf-keras
```

Rebuild with:

```bash
docker compose build
```

---

## Stop and Clean Up

```bash
docker compose down
```

To remove the image too:

```bash
docker compose down --rmi all
```

---

## 📦 Optional: Push Image to Docker Hub

1. Tag your image:
```bash
docker tag tensorflow_jupyter yourusername/transformer-notebook
```

2. Push it:
```bash
docker push yourusername/transformer-notebook
```

---

## 🤝 Contributions

PRs are welcome if you'd like to add more features or share new use cases!

---

