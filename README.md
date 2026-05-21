# docker-container-ilastik

Docker container with ilastik, Python, `tifffile`, and `scikit-image`.

## Build locally

```bash
docker build -t ilastik:local .
```

## Publish to GitHub Container Registry

The workflow `.github/workflows/publish.yml` builds and publishes the image to GHCR on pushes to `main`, tag pushes (`v*`), or manual dispatch.
