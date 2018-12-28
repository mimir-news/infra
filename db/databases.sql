CREATE DATABASE streamlistener;
CREATE ROLE streamlistener WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE streamlistener TO streamlistener;

CREATE ROLE stocksearch WITH LOGIN PASSWORD 'password';
GRANT CONNECT ON DATABASE streamlistner TO stocksearch;
GRANT USAGE ON SCHEMA public TO stocksearch;

CREATE DATABASE spamfilter;
CREATE ROLE spamfilter WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE spamfilter TO spamfilter;

CREATE DATABASE newsranker;
CREATE ROLE newsranker WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE newsranker TO newsranker;

CREATE ROLE newssearch WITH LOGIN PASSWORD 'password';
GRANT CONNECT ON DATABASE newsranker TO newssearch;
GRANT USAGE ON SCHEMA public TO newssearch;

CREATE DATABASE directory;
CREATE ROLE directory WITH LOGIN PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE directory TO directory;
