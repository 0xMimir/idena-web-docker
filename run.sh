#!/bin/bash
docker build -t idena .
docker run -p 9001:80 idena

# http://localhost:9001/key/create
# 2621578ce5813b681d9da73a00f6885ae9192d95ba5a045363c6a426ae8f1300e771700860f5d080fd88790458d9568f888deac0d61c2fe2809ae06f