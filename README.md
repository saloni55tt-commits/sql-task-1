# Library management schema 

# Description
This project contains a SQL schema for a simple library management system.

# Files Included
- schema.sql: SQL code to create tables.
- ER diagram.png: Visual ER diagram of the schema.

  # Entities
  - Students
  - Books
  - Librarians
  - Issued Books (junction table for issuing books)
 
    # Realtionships
    - A student can borrow many books.
    - A book can be issued many times to different students.
