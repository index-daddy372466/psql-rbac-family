# Meet the RBAC Family
<img src="./scenes/chapter1/familyphoto.png">

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


## Creat Family roles & grant roles to family members

1. ```CREATE [role]```
<img src="./scenes/chapter2/ch2_createroles.png">
**Tip:** <em>Logging in with a role is optional. Use ```CREATE [role] WITH LOGIN [PASSWORD 'password']```.</em>

2. ```CREATE [user] WITH LOGIN``` (Login is optional)
<img src="./scenes/chapter2/ch2_createusers.png">

3. ```GRANT [rolname] to [role]```
<img src="./scenes/chapter2/ch2_grantroles.png">

4. ```\du``` (Display users & roles)
<img src="./scenes/chapter2/ch2_showur.png">

5. ```CREATE DATABASE [user] owner [user|role]```

**Tip:** <em>Grant ownership to a parent ROLE to both child databases.<br>Children are parents' property until they become 18 years old.</em>
<img src="./scenes/chapter2/ch2_createdbusers.png">


## Grant & Revoke to roles|users
1. ```REVOKE from public``` & ```GRANT CONNECT```
<img src="./scenes/chapter3/revokeonpublicandgrantconnect.png">

2. ```\dn``` (show schemas) & ```GRANT USAGE to [role|user]```
<img src="./scenes/chapter3/checkschemasandgrant.png">

3. ```GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA family to [role|user]```
<img src="./scenes/chapter3/grantalltoparents.png">

4. Grant priveleges to child role

<img src="./scenes/chapter3/granttochildren.png">

5. Revoke priveleges from child role to parentroom
<img src="./scenes/chapter3/revokechildrenfromparentsroom.png">

6. Alter default privileges on the current changes. New instances can inherit revoke/grant changes.
<img src="./scenes/chapter3/alterdefaultprivileges.png">

## Proof of Privileges

### Parent Privileges
<img src="scenes/chapter4/parentpriv.png">


### Child Privileges

1. Parent role privileges. SELECT,INSERT,UPDATE,DELETE
<img src="scenes/chapter4/childlogin.png">

2. Child role privileges:
Children are granted ```ALL PRIVILEGES``` for the bathroom & childroom tables. 
Children are granted ```INSERT,UPDATE``` PRIVILEGES for the livingroom & kitchen tables.
<img src="scenes/chapter4/childpriveleges.png">
<img src="scenes/chapter4/child2login.png">
<img src="scenes/chapter4/childprivinsert.png">

### Children Revoked from Parents room

3. Children are revoked from having anything to do with thair parent's room (parentroom table)
<img src="scenes/chapter4/chidrenrevokedfromparents.png">



