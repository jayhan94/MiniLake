# MiniLake
A morden mini lakehouse based on Spark and Iceberg running in the docker.

# Usage
Build and run
```bash
docker compose up --build
```

Attach the spark container
```bash
docker exec -it spark-iceberg /opt/spark/bin/spark-sql
```

Show schema first

```SQL
SHOW SCHEMAS;
```

You should get a default schema.
```
namespace
default
```

Checkout default schema
```SQL
USE default;
```

Create table
```SQL
CREATE TABLE student (id INT, name STRING, age INT) USING ICEBERG LOCATION 's3://minilake/student';
```

Insert data
```SQL
INSERT INTO student VALUES (1, 'jay', 15), (2, 'dove', 15);
```

Execute query
```SQL
SELECT * FROM student;
```

# TODO
1. A standalone catalog server.
2. Ingesting real-time data from Kafka.
3. CDC.
