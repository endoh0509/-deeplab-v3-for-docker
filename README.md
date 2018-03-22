# DeepLab-v3

# Usage

```bash
git clone --recursive THIS_REPOSITORY_URL
cd THIS_REPOSITORY_PATH
docker build .
docker images
docker tag IMAGE_ID deeplab/v3:1.0
docker run -d --name deeplab -p 8888:8888 -v `pwd`/home/jovyan/work:/home/jovyan/work -e GRANT_SUDO=yes deeplab/v3:1.0
docker exec deeplab jupyter notebook list
# Currently running servers:
# http://localhost:8888/?token=2bc9f5a0c9332e1e130caad275e7bbc7ae000c239623be79 :: /home/jovyan/work
open http://localhost:8888/?token=2bc9f5a0c9332e1e130caad275e7bbc7ae000c239623be79
```
