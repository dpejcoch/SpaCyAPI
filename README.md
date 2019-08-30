# SpaCyAPI

## Summary
Docker version of displaCy and matcher SpaCy services from github.com/explosion/spacy-services in single container. DisplaCy runs on port 80, Matcher runs on port 81.

## Deployment
Once built it is quite big docker image (5GB) containing all languages models, available also directly from docker hub as dpejcoch/spacyapi:latest

Install:
```
docker run -d -p 80:80 -p 81:81 dpejcoch/spacyapi:latest
```

When building from Dockerfile:
```
docker build -t dpejcoch/spacyapi:latest .
```


