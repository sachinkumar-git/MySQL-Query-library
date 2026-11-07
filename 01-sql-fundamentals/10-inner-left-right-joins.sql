-- =============================================
-- Combine Tables with JOIN
-- =============================================

USE startersql;

-- View both tables
SELECT * FROM users;
SELECT * FROM addresses;

-- INNER JOIN: only users that have a matching address
SELECT users.name, addresses.city, addresses.state, addresses.id AS addresses_id
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN: all users, with NULL address values when no match exists
-- SELECT users.name, addresses.city, addresses.state, addresses.id AS addresses_id
-- FROM users
-- LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN: all addresses, with NULL user values when no match exists
-- SELECT users.name, addresses.city, addresses.state, addresses.id AS addresses_id
-- FROM users
-- RIGHT JOIN addresses ON users.id = addresses.user_id;
