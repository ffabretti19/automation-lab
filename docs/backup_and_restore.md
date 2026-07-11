## Backup & Restore

### Backup

Para gerar um backup do PostgreSQL:

```bash
make backup
```

Os arquivos são armazenados em:

```text
backups/postgres/
```

---

### Restore

O restore **não deve ser executado** sobre um banco já inicializado pelo n8n.

Caso contrário ocorrerão erros como:

- relation already exists
- duplicate key
- foreign key constraint

---

### Procedimento de Disaster Recovery

Para restaurar completamente o ambiente:

```bash
docker compose down -v

docker compose up -d postgres

make restore FILE=backups/postgres/<backup>.sql

docker compose up -d n8n
```

---

### Explicação

O n8n executa automaticamente as migrations durante sua inicialização.

Se o n8n for iniciado antes do restore:

- todas as tabelas serão criadas novamente;
- um novo usuário será criado;
- um novo projeto será criado.

Isso gera conflitos durante a restauração do backup.

Por esse motivo, o restore deve ser realizado **antes** da inicialização do n8n.

---

### Validação

Após o restore:

- usuário restaurado
- projeto restaurado
- workflows restaurados
- credenciais preservadas
- interface do n8n funcionando normalmente