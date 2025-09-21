-- Indexes [An index in MySQL is a data structure that makes data retrieval faster—especially when you're using WHERE, JOIN, ORDER BY, or searching large tables.Think of an index like the index in a book: instead of reading every page, MySQL uses the index to jump straight to the relevant row(s).]

CREATE INDEX idx_email ON users(email);

CREATE INDEX idx_name_city ON users(name, city);