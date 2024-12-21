Here’s your complete SQL project in markdown format, designed with proper structure:

```markdown
# SQL Project: Creating and Modifying a Friends Table

In this project, we will create a `friends` table, insert data, modify it, and remove records.

## 1. Create a Table Named `friends`

First, create a table called `friends` with three columns:
- `id` (INTEGER)
- `name` (TEXT)
- `birthday` (DATE)

```sql
CREATE TABLE friends (
    id INTEGER,
    name TEXT,
    birthday DATE
);
```

---

## 2. Add Ororo Munroe to `friends`

Now, let's add Ororo Munroe, whose birthday is May 30th, 1940.

```sql
INSERT INTO friends (id, name, birthday) 
VALUES (1, 'Ororo Munroe', '1940-05-30');
```

---

## 3. Check if Ororo Munroe Was Added

To ensure that Ororo has been added to the `friends` table, use the `SELECT` statement:

```sql
SELECT * 
FROM friends;
```

**Expected Output:**
- The `friends` table should be created.
- Ororo Munroe should be listed with her `id`, `name`, and `birthday`.

---

## 4. Add Two More Friends

Now, add two of your friends to the `friends` table by specifying an `id`, `name`, and `birthday` for each.

```sql
INSERT INTO friends (id, name, birthday) 
VALUES (2, 'BFF One', 'YYYY-MM-DD');

INSERT INTO friends (id, name, birthday) 
VALUES (3, 'BFF Two', 'YYYY-MM-DD');
```

Replace `YYYY-MM-DD` with the actual birthdays.

---

## 5. Update Ororo Munroe's Name to "Storm"

Ororo Munroe decided to change her name to "Storm." Use the `UPDATE` statement to modify her record:

```sql
UPDATE friends
SET name = 'Storm'
WHERE id = 1;
```

---

## 6. Add a New Column for Email

Let’s add a new column named `email` to the `friends` table.

```sql
ALTER TABLE friends ADD COLUMN email TEXT DEFAULT NULL;
```

---

## 7. Update Email Addresses

Update the email address for everyone in the table. For example, Storm’s email is `storm@codecademy.com`.

```sql
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'bff1@example.com'
WHERE id = 2;

UPDATE friends
SET email = 'bff2@example.com'
WHERE id = 3;
```

---

## 8. Remove Storm from `friends`

Storm has decided to leave the database. Use the `DELETE` statement to remove her from the table:

```sql
DELETE FROM friends
WHERE id = 1;
```

---

## 9. Final Check

Let’s take a final look at the `friends` table to see the updated data.

```sql
SELECT * 
FROM friends;
```

**Expected Output:**
- The `friends` table should show your two remaining friends with their `id`, `name`, `birthday`, and `email`.

---

### Congratulations!

You've successfully completed this SQL project by creating a table, inserting data, updating records, and deleting data. You can continue experimenting with more SQL commands to further enhance your skills.
```

This markdown file includes all the instructions, SQL queries, and expected outputs with proper formatting.