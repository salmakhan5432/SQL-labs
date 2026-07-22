# 🗄️ SQL_Labs

> **Database Systems** — 3rd Semester Lab Solutions  
> Organized weekly SQL exercises covering core database concepts using structured query language.

---

## 📘 About This Repository

This repository contains my personal lab solutions for the **Database Systems** course (3rd Semester). The purpose of this repository is to document my learning journey, practice SQL concepts, and maintain an organized collection of weekly lab work.

The labs and solutions in this repository are implemented using Oracle Database as part of the Database Systems course.

All solutions are written in standard SQL and organized by week for easy navigation.

---

## 🎓 Subject Details

| Field        | Details                          |
|--------------|----------------------------------|
| **Subject**  | Database Systems                 |
| **Semester** | 3rd Semester                     |
| **Focus**    | SQL Queries & Database Concepts  |
| **Language** | SQL (Structured Query Language)  |

---

## 📁 Folder Structure

```
SQL_Labs/
│
├── Week1/
│   ├── README.md                          ← Weekly overview & task description
│   ├── lab01_projection_operation.sql
│  
│
├── Week2/
│   ├── README.md
│   └── lab02_selection_operation.sql
│
├── Week3/
│   ├── README.md
│   └── lab03_joins.sql
│
├── Week4/
│   ├── README.md
│   └── ....
│
└── README.md                              ← You are here
```

> Each `WeekN/` folder represents one lab session and contains all SQL solution files for that week, along with a `README.md` explaining the tasks.

---

## 🏷️ File Naming Convention

SQL files follow a consistent naming pattern for clarity:

```
lab[NUMBER]_[topic_description].sql
```

**Examples:**

| File Name                            | Meaning                              |
|--------------------------------------|--------------------------------------|
| `lab01_projection_operation.sql`     | Lab 1 — Projection Operation         |
| `lab02_selection_operation.sql`      | Lab 2 — Selection Operation          |
| `lab03_join_operations.sql`          | Lab 3 — Join Operations              |

- Numbers are **zero-padded** (`01`, `02`) for proper alphabetical sorting
- Topic names use **snake_case** (lowercase with underscores)
- Each file name clearly reflects its **topic/concept**

---

## 🧭 How to Navigate

1. **Browse by week** — Open any `WeekN/` folder to see that week's labs
2. **Read the weekly README** — Each folder has a `README.md` with task descriptions and notes
3. **Open `.sql` files** — View the SQL solutions directly on GitHub or download them

To run a solution locally:

```bash
# Example using MySQL / MariaDB
mysql -u your_username -p your_database < Week1/lab01_projection_operation.sql

# Example using PostgreSQL
psql -U your_username -d your_database -f Week1/lab01_projection_operation.sql
```

---

## 📅 Weekly Progress

| Week   | Topics Covered              | Status      |
|--------|-----------------------------|-------------|
| Week 1 | Projection                   | ✅ Complete  |
| Week 2 | Selection                    | ✅ Complete  |
| Week 3 | Joins                        | ✅ Complete  |
| Week 4 | Group Functions              | ✅ Complete  |
| Week 5 | Subqueries                   | ✅ Complete  |
| Week 6 | DML                          | ✅ Complete  |
| Week 7 | Views                        | ✅ Complete  |
| Week 8 | DDL                          | ✅ Complete  |
| Week 9 | Constraints                  | ✅ Complete  |


> This table is updated as new labs are completed.

---

## 🚀 Future Plans

- [ ] Add **Lab PDF files** for each week (pending instructor permission)
- [ ] Complete weekly `README.md` files with detailed task explanations

---

## ⚠️ Academic Integrity Notice

These solutions are shared for **learning and reference purposes only**.  
If you are enrolled in the same or a similar course, please attempt the labs independently before consulting this repository. Academic honesty matters.


*Last updated: July 2026*