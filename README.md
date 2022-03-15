# Terraform

Todo o ambiente é criado usando Terraform com a estratégia de usar um bucket backend no Google Storage Cloud para que o seu estado esteja centralizado e acessível para todos que precisarem de acesso.
Foi configurado para que a ferramenta Terraform faça a criação do servidor que abrigará a ferramenta Sonarqube.


Usado para autenticar no Google Storage.
export GOOGLE_APPLICATION_CREDENTIALS=/home/hass/Documents/keys/gcp/om30/devops-340214-0a05fdbf885d.json


# Ansible

Toda a configuração será realizada pela ferramenta Ansible.
Ela fará a instalação de todos os recursos e pré-requisitos necessários para o funcionamento do Sonarqube.
O Docker será usado para fazer a instalação da ferramenta e seu database com Postgres via docker-compose.


# Github Actions

Após a criação e configuração da ferramenta, é necessário configurar a ferramenta Github Actions para que os workflows possam acessar a ferramenta e fazer a análise estática de código de forma atualizada.



