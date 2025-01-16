# MiniLake
A morden mini lakehouse based on Spark and Delta running in the docker.

# Usage
Build and run
```bash
docker compose up --build
```

Attach the spark container
```bash
docker exec -it spark-delta /opt/spark/bin/spark-sql
```

Create table
```SQL
CREATE OR REPLACE TABLE student (id INT, name STRING, age INT) USING DELTA LOCATION 's3a://warehouse/student' TBLPROPERTIES (delta.enableChangeDataFeed = true);
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
