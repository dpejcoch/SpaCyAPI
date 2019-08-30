FROM python:3.6
LABEL maintainer="gontrum@me.com"
LABEL version="0.2"
LABEL description="Base image, containing no language models."

# Install the required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    supervisor \
    curl \
    nginx && \
    apt-get -q clean -y && rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin

COPY . /app    

# Configure nginx & supervisor
RUN mv /app/config/supervisor.conf /etc/supervisor/conf.d/

RUN pip install -r /app/displacy/requirements.txt
RUN pip install -r /app/matcher/requirements.txt

ENV PORT 80
EXPOSE 80

ENV PORT 81
EXPOSE 81

CMD ["bash", "/app/start.sh"]