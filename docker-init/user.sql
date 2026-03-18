-- Create Database
CREATE DATABASE IF NOT EXISTS ccio;

-- Create User that matches conf.json
CREATE USER IF NOT EXISTS 'shinobi'@'%' IDENTIFIED BY 'admin123';

-- Grant Permissions
GRANT ALL PRIVILEGES ON ccio.* TO 'shinobi'@'%';

-- Refresh
FLUSH PRIVILEGES;
