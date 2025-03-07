#databases 
#mongo 

## Reasons to use SQL Database

Not every database fits every business need. That’s why **_many companies rely on both relational and non-relational databases for different tasks_**_._ Although NoSQL databases have gained popularity for their speed and scalability, there are still situations in which a highly structured SQL database might be preferable. Two reasons why you might consider a SQL database are:

1. **You need ACID compliancy _(Atomicity, Consistency, Isolation, Durability)_**. ACID compliancy reduces anomalies and protects the integrity of your database. It does this by defining exactly how transactions interact with the database, which is not the case with NoSQL databases, which have a primary goal of flexibility and speed, rather than 100% data integrity.
2. **Your data is structured and unchanging**:If your business is not growing exponentially, there may be no reason to use a system designed to support a variety of data types and high traffic volume.

## Reason to use a NoSQL Database

To prevent the database from becoming a system-wide bottleneck, especially in high volume environments, NoSQL databases perform in a way that relational databases cannot.

The following features are driving the popularity of NoSQL databases like MongoDB, Couch DB, Cassandra, and HBase:

1. **Storing large volumes of data without structure.** A NoSQL database doesn’t limit storable data types. Plus, you can add new types as business needs change.
2. **Using cloud computing and storage.** Cloud-based storage is a great solution, but it requires data to be easily spread across multiple servers for scaling. Using affordable hardware on-site for testing and then for production in the cloud is what NoSQL databases are designed for.
3. **Rapid development.** If you are developing using modern agile methodologies, a relational database will slow you down. A NoSQL database doesn’t require the level of preparation typically needed for relational databases.