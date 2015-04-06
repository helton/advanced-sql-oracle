--------------------------------------------------------------------------------
--Setup
--------------------------------------------------------------------------------
CREATE TABLE FAMILY(CHILD_KEY VARCHAR2(50) NOT NULL,PARENT_KEY VARCHAR2(50));

INSERT INTO FAMILY VALUES('GRANDPARENTS',NULL);
INSERT INTO FAMILY VALUES('PARENTS','GRANDPARENTS');
INSERT INTO FAMILY VALUES('CHILD-1','PARENTS');
INSERT INTO FAMILY VALUES('CHILD-2','PARENTS');
