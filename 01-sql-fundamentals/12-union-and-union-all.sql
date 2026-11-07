-- =============================================
-- Combine Query Results with UNION
-- =============================================

USE startersql;

-- UNION combines results and removes duplicate rows
-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users;

-- UNION ALL keeps duplicate rows
-- A constant column ('User' / 'Admin') shows where each row came from
-- SELECT email, name, 'User' AS role FROM users
-- UNION ALL
-- SELECT email, name, 'Admin' AS role FROM admin_users;

-- ORDER BY with UNION sorts the combined result
SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;
