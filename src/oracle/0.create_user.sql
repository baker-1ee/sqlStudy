/* sct user 생성 */
drop user testuser;
create user testuser identified by testuser;

/* sct 권한 할당 */
grant connect to testuser;
grant create session to testuser;
grant select_catalog_role to testuser;
grant select any dictionary to testuser;
grant select on SYS.ARGUMENT$ to testuser;

/* testuser 에 dml, ddl 권한 부여 */
ALTER USER TESTUSER QUOTA UNLIMITED ON USERS;
GRANT RESOURCE TO testuser;
GRANT CREATE ANY TABLE TO testuser;
GRANT DROP ANY TABLE TO testuser;
GRANT ALTER ANY TABLE TO testuser;
GRANT INSERT ANY TABLE TO testuser;
GRANT UPDATE ANY TABLE TO testuser;
GRANT DELETE ANY TABLE TO testuser;
