# Milestone 01

## Objetivo

Criar a fundação da plataforma.

---

## Tecnologias

- Docker Compose
- PostgreSQL
- n8n

---

## Decisões

### PostgreSQL

Foi escolhido PostgreSQL ao invés do SQLite.

Motivos

- ambiente mais próximo de produção
- melhor estratégia de backup
- escalabilidade

---

### Docker Compose

Foi escolhido Docker Compose.

Motivos

- simplicidade
- facilidade para laboratório
- futura migração para Kubernetes

---

### Volumes nomeados

Motivos

- persistência
- portabilidade

---

### Healthcheck

Foi implementado para garantir que o PostgreSQL esteja disponível antes da inicialização do n8n.

---

### Logging

Foi configurado log rotation utilizando o driver json-file do Docker.

---

## Estrutura

- Docker Compose
- PostgreSQL
- n8n

