# Database-Sneaks

A small SQL practice project with two datasets:

- `elements`: periodic table data (single-table database)

- `sneaks`: webshop/sneaker data (multi-table relational database)
The repository is built for learning core SQL operations such as `SELECT`, `WHERE`, `ORDER BY`, `JOIN`, `INSERT`, `UPDATE`, and `DELETE`.

## Project Structure

### `elements/`

- `1-create-db.sql`: Creates table `element` and inserts periodic table data.
- `2-eksempler.sql`: Example SQL queries for filtering, sorting, and aggregates.
- `3-opgaver.md`: SQL exercises/tasks.
- `elements.db`: SQLite database file for the elements dataset.

### `sneaks/`

- `1-create-db.sql`: Creates `Kunde`, `Produkt`, `Ordre` and inserts demo data.
- `2-eksempler.sql`: Example SQL queries including joins and data changes.
- `3-opgaver.md`: SQL exercises/tasks.
- `opgaver.sql`: Starter file with a sample solved task.
- `sneaks.db`: SQLite database file for the sneaks dataset.

## Quick Start (SQLite)

If you want to recreate databases from SQL scripts:

```bash
# Elements
sqlite3 elements/elements.db < elements/1-create-db.sql

# Sneaks
sqlite3 sneaks/sneaks.db < sneaks/1-create-db.sql
```

Open interactive SQLite sessions:

```bash
sqlite3 elements/elements.db
sqlite3 sneaks/sneaks.db
```

Run example files inside SQLite:

```sql
.read elements/2-eksempler.sql
.read sneaks/2-eksempler.sql
```

## Learning Flow

1. Create/load a database with `1-create-db.sql`.
2. Run and inspect examples in `2-eksempler.sql`.
3. Solve tasks in `3-opgaver.md` (or `sneaks/opgaver.sql`).

## Notes

- SQL comments in the files are written in Danish.
- Existing `.db` files are included for convenience, so you can query immediately without setup.
