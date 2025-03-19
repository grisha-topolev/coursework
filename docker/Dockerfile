FROM ubuntu:latest

# Устанавливаем нужные пакеты
RUN apt-get update && apt-get install -y \
    curl \
    git \
    docker.io \
    && rm -rf /var/lib/apt/lists/*

# Создаем пользователя
RUN useradd -m devuser

# Устанавливаем Docker в контейнер
RUN curl -fsSL https://get.docker.com | sh

# Добавляем пользователя в группу Docker
RUN usermod -aG docker devuser

WORKDIR /home/devuser
RUN mkdir actions-runner && cd actions-runner
RUN curl -o actions-runner-linux-arm64-2.322.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.322.0/actions-runner-linux-arm64-2.322.0.tar.gz
RUN tar xzf ./actions-runner-linux-arm64-2.322.0.tar.gz

# Копируем скрипт запуска
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Запуск контейнера
CMD ["/entrypoint.sh"]
