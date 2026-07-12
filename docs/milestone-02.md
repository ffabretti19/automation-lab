# Milestone 02 - Local AI Platform

## Sprint 2.1 - Ollama Foundation

### Objetivos

- Adicionar Ollama ao Docker Compose
- Configurar persistência
- Implementar Health Check

### Resultado

✅ Ollama operacional  
✅ API disponível em:  
http://localhost:11434  

✅ Volume persistente:  
automation-lab_ollama_data

✅ Health Check funcional

### Testes realizados

`curl http://localhost:11434/api/tags`  
Resultado:  
{"models":[]}


---

# Sprint 2.2 - Open WebUI

## Escopo

- Instalação do Open WebUI
- Integração com Ollama
- Primeiro acesso à interface
- Validação da comunicação entre os componentes

## Conceitos Aprendidos

### Ollama

O Ollama é responsável por:

- executar os modelos de IA;
- armazenar os modelos localmente;
- disponibilizar uma API para consumo.

### Open WebUI

O Open WebUI é uma interface web que consome a API do Ollama.

Ele não executa modelos diretamente.

Toda comunicação ocorre através da API do Ollama.

### Acesso à Interface

URL:

```text
http://localhost:8080
```

Resultado:

- Interface carregada com sucesso
- Usuário administrador criado

### Integração com Ollama

Validação realizada através do painel:

```text
Administração
→ Configurações
→ Ligações
```

### Lista de Modelos

Resultado atual:

```text
Nenhum modelo disponível
```

Comportamento esperado, pois ainda não existem modelos instalados no Ollama.