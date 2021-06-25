FROM python:3.9-slim-buster

RUN apt-get update -y \
 && apt-get install curl apt-transport-https gnupg -y\
 && curl -s https://baltocdn.com/helm/signing.asc | apt-key add - \
 && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
 && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee -a /etc/apt/sources.list.d/helm-stable-debian.list \
 && touch /etc/apt/sources.list.d/helm-stable-debian.list \
 && echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list \
 && touch /etc/apt/sources.list.d/kubernetes.list \
 && apt-get update -y \
 && apt-get install -y kubectl helm \
 && pip install oci-cli

CMD ["helm"]
