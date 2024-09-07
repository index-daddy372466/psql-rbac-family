# Meet the RBAC Family
<img src="./scenes/rbacfam.png">

## Setup family - home [schema - database]
1. ```CREATE``` database (home)
<img src="./scenes/chapter1/chapter1_database.png">

2. ```\c``` (CONNECT) to home
<img src="./scenes/chapter1/chapter1_connect_to_db.png">

3. ```CREATE SCHEMA``` family (schema)

4. ```CREATE SCHEMA``` affair (schem)

5. ```SHOW SEARCH_PATH```

6. ```ALTER DATABASE``` home ```SET SEARCH_PATH``` to family,public

7. Finally, ```CREATE``` a ```VIEW``` to view your role stats.
Access ```pg_roles``` table & filter roles that do not include "pg" (predefined roles) and "postgres ".

```CREATE VIEW current_roles AS SELECT * FROM pg_roles WHERE rolname not like 'pg%' AND rolname NOT LIKE 'postgres';```

<img src="./scenes/chapter1/chapter1_current_roles_views.png">

**Tip:** <em>The ```SEARCH_PATH``` can be set **temporarily** by omitting ```ALTER DATABASE [database]``` in step number 6</em>

**Tip:** <em>Depending on the PostgreSQL version, after setting ```SEARCH_PATH```, if the path is not updated, it may be necessary to leave the current database (home) & ```\c``` to home again.</em>

<img src="./scenes/chapter1/chapter1_environment_setup.png">
