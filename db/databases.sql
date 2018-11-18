CREATE DATABASE streamlistner;
CREATE ROLE streamlistner WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE streamlistner TO streamlistner;

CREATE DATABASE spamfilter;
CREATE ROLE spamfilter WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE spamfilter TO spamfilter;

CREATE DATABASE newsranker;
CREATE ROLE newsranker WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE newsranker TO newsranker;

CREATE DATABASE directory;
CREATE ROLE directory WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE directory TO directory;
