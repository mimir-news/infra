CREATE DATABASE streamlistener;
CREATE ROLE streamlistener WITH LOGIN PASSWORD 'streamlistener';
GRANT ALL PRIVILEGES ON DATABASE streamlistener TO streamlistener;

CREATE ROLE stocksearch WITH LOGIN PASSWORD 'stocksearch';
GRANT CONNECT ON DATABASE streamlistener TO stocksearch;
GRANT USAGE ON SCHEMA public TO stocksearch;

CREATE DATABASE spamfilter;
CREATE ROLE spamfilter WITH LOGIN PASSWORD 'spamfilter';
GRANT ALL PRIVILEGES ON DATABASE spamfilter TO spamfilter;

CREATE DATABASE newsranker;
CREATE ROLE newsranker WITH LOGIN PASSWORD 'newsranker';
GRANT ALL PRIVILEGES ON DATABASE newsranker TO newsranker;

CREATE ROLE newssearch WITH LOGIN PASSWORD 'newssearch';
GRANT CONNECT ON DATABASE newsranker TO newssearch;
GRANT USAGE ON SCHEMA public TO newssearch;

CREATE DATABASE directory;
CREATE ROLE directory WITH LOGIN PASSWORD 'directory';
GRANT ALL PRIVILEGES ON DATABASE directory TO directory;
