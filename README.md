# Gym Membership Management System

## Overview
This project is a comprehensive Gym Membership Management System, designed to streamline the operations of gyms by managing memberships, trainers, sessions, and payments effectively. It includes an SQL database schema, SQL scripts for operations, design diagrams, and a detailed final report in PDF format.

---

## Repository Contents
### 1. **SQL Scripts & SOURCE CODE**
   - `schema.sql`: Contains the SQL scripts for creating the database tables and their relationships (e.g., `Member`, `Trainer`, `Session`, `Payments`, etc.).
   - `data_population.sql`: Includes sample data to populate the tables.
   - `queries.sql`: Sample queries to demonstrate CRUD operations.
   - `advanced_queries.sql`: Queries to perform advanced sql queries i.e Procedures,Triggers



### 2. **Design Diagrams**
Under the folder Diagrams:
   - `erd.drawio.png`: The Entity-Relationship Diagram for the database.
   - `sql chema.drawio.png`: Detailed table designs for the system.
   

### 3. **Final Report**
   - `Final_Report.pdf`: A detailed project report including:
     - Overview of the system.
     - Rationale and objectives.
     - System design and architecture.
     - CRUD operations for various actors.
     - Future improvements.

---

## Setup Instructions

### Prerequisites
- **Database**: MySQL (version 8.0 or later recommended)
- **System Tools**: Git, any IDE/Text Editor.

### Steps to Set Up
1. **Clone the Repository**
   Open git bash/terminal
   git clone https://github.com/JesseChomba/Group-15.git
   cd gym-membership-management
### 2.**Setup the Database**

    Open the schema.sql file in a MySQL client and execute the script to create the database and its tables.
    Populate the tables with sample data using the data_population.sql file.

### 3.**Test the Application**

    Use the SQL queries in queries.sql or the frontend interface to perform CRUD operations (e.g., add members, schedule sessions, track payments).
