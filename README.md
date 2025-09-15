# Bike Stores – Desafio SQL (Marketing & Comercial)

**Resumo:** consultas SQL para responder às métricas pedidas (clientes sem compra, produtos nunca comprados/sem estoque, vendas por marca/loja e funcionários sem pedidos) sobre um **banco provisório** inspirado no esquema Bike Stores.  
> Ambiente usado: **PostgreSQL + pgAdmin 4** (instância local na porta **5433**).

---

## Como foi pensado (essencial)
- **Reprodutibilidade:** inclui scripts idempotentes para levantar um banco **mínimo**, garantindo todos os cenários de teste.
- **Consultas portáveis:** `LEFT JOIN … IS NULL` e/ou `NOT EXISTS` para “nunca comprados”; `GROUP BY … HAVING SUM(...) = 0` para “sem estoque”; agregações comerciais por **loja** e **marca** (pedidos, itens e receita).
- **Dados de vitrine (seed):** intencionalmente pequenos, focados em validar cada requisito sem ruído.

---

## Banco provisório (seed mínimo)
- **DB:** `bike_stores` (local, **5433**).
- **Cenários embutidos:**
  - `products`: 3 itens — o **produto 3** não aparece em `order_items` nem em `stocks` → testa “nunca comprado” e “sem estoque”.
  - `customers`: 3 clientes — o **cliente 3** não tem pedidos → “clientes sem compra”.
  - `staffs`: 3 pessoas — o **staff 1** não tem pedidos → “funcionários sem pedidos”.
  - `orders/order_items`: 2 pedidos simples (um por loja), com **desconto** em um item para validar **receita**.

---

## Execução rápida com **pgAdmin 4**
1. **Criar DB:** *Object → Create → Database…* → `bike_stores` (UTF8).  
2. **Query Tool** no DB `bike_stores` e rodar, nesta ordem:
   - `sql/init/02_schema_fixed.sql`
   - `sql/init/03_indexes.sql`
   - `sql/init/04_seed_minimal.sql`
3. (Opcional) Rodar as **consultas** em `sql/queries/*.sql`.

> Observação: a instância local está configurada na **porta 5433**; ajuste conforme seu ambiente.

---

## Estrutura essencial
sql/
init/
01_create_database.sql
02_schema_fixed.sql
03_indexes.sql
04_seed_minimal.sql
queries/
clientes_sem_compras.sql
produtos_nunca_comprados.sql
produtos_sem_estoque.sql
vendas_por_marca_por_loja.sql
funcionarios_sem_pedidos.sql

yaml
Copy code

---

## Notas rápidas
- **Dados são de exemplo** e **mínimos**, apenas para validar as consultas do desafio.
- Não versione senhas/credenciais; mantenha `.env/.pgpass` fora do repositório.
- Qualquer troca de porta/usuário pode ser ajustada diretamente no pgAdmin.

---

**This is a challenge by Coodesh**