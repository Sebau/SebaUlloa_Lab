--1
SELECT * FROM TEST.EMPLOYEES;
--2
SELECT E.ID, E.LAST_NAME,E.HIRE_DATE FROM TEST.EMPLOYEES E;
--3
SELECT E.ID, E.LAST_NAME,E.HIRE_DATE,SALARY FROM TEST.EMPLOYEES E;
--4
SELECT E.ID,E.LAST_NAME,E.HIRE_DATE FROM (SELECT SUM(SALARY * 12) AS 'SALARIO ANUAL'
FROM TEST.EMPLOYEES) TEST.EMPLOYEES;
--5
SELECT E.LAST_NAME,E.FIRST_NAME,E.HIRE_DATE,SALARY FROM TEST.EMPLOYEES E;
--6
SELECT DEPARTMENT_ID FROM TEST.EMPLOYEES;
SELECT DISTINCT DEPARTMENT_ID FROM TEST.EMPLOYEES;
--7
SELECT * FROM EMPLOYES WHERE DEPARTMENT_ID = 10;
--8
SELECT * FROM TEST.EMPLOYEES WHERE SALARY < 2000;
--9
SELECT * FROM TEST.EMPLOYEES WHERE SALARY BETWENN 1800 AND 3000;
--10
SELECT * FROM TEST.EMPLOYEES WHERE DEPARTMENT_ID IN 10,30 OR 31;
--11
SELECT * FROM TEST.EMPLOYEES WHERE LAST_NAME LIKE F%;
--12
SELECT * FROM TEST.EMPLOYEES WHERE JOB_ID = NULL;
SELECT * FROM TEST.EMPLOYEES WHERE JOB_ID = NOT NUlL;
--13
SELECT * FROM TEST.EMPLOYEES WHERE SALARY BETWENN 1800 AND 3000;
--14
SELECT DISTINCT JOB_ID FROM TEST.EMPLOYEES WHERE JOB_ID !=AD_CTB AND SALARY > 1900;
--15
SELECT DISTINCT JOB_ID FROM TEST.EMPLOYEES WHERE JOB_ID !=AD_CTB OR SALARY > 1900;
--16
SELECT DISTINCT JOB_ID FROM TEST.EMPLOYEES WHERE JOB_ID == AD_CTB AND FQ_GRT, SALARY > 1900;
--17
SELECT * FROM TEST.EMPLOYEES ORDER BY HIRE_DATE DESC;
--18
SELECT * FROM TEST.EMPLOYEES ORDER BY HIRE_DATE ASC;
--19
SELECT * FROM TEST.EMPLOYEES ORDER BY HIRE_DATE DESC AND LAST_NAME ASC;
--20
SELECT SUM (SALARY * 12) AS 'SALARIO ANUAL', LAST_NAME FROM TEST.EMPLOYEES ORDER BY 'SALARIO ANUAL'
--21
SELECT * FROM TEST.EMPLOYEES E,DEPARMENTS D WHERE DEPARMENT_ID = D.ID;
--22
SELECT LAST_NAME,DEPARTMENT_NAME FROM TEST.EMPLOYEES E,DEPARMENTS D WHERE E.DEPARTMENT_ID = D.ID;
--23
SELECT EMPLOYEES.ID AS 'ID EMPLEADO',LAST_NAME AS 'APELLIDO', 
        DEPARTMENT_NAME AS 'DEPA NOMBRE',DEPARTMENT_ID AS 'ID DEPARTAMENTO' 
FROM TEST.EMPLOYEES E, DEPARMENTS D
WHERE E.DEPARTMENT_ID = D.ID;
--24
SELECT *, DEPARTMENT_DESCRIPTION,CITY
FROM TEST.EMPLOYEES E, DEPARMENTS D,LOCATIONS
WHERE E.DEPARTMENT_ID =D.ID;
--25
SELECT LAST_NAME AS 'APELLIDO', FIRST_NAME AS 'NOMBRE',DEPARTMENT_DESCRIPTION,CITY
FROM TEST.EMPLOYEES E, DEPARMENTS D,LOCATIONS L
JOIN EMPLOYEES E ON E.DEPARTMENT_ID = D.ID
JOIN DEPARMENT ON L.ID = D.LOCATION_ID;

--26
SELECT LAST_NAME AS 'APELLIDO', FIRST_NAME AS 'NOMBRE',DEPARTMENT_ID
FROM TEST.EMPLOYEES
JOIN DEPARMENTS ON E.DEPARTMENT_ID = D.ID;
--27
SELECT LAST_NAME AS 'APELLIDO', FIRST_NAME AS 'NOMBRE',DEPARTMENT_ID
FROM DEPARMENTS D
JOIN EMPLOYEES E ON E.DEPARTMENT_ID = D.ID;
--28
SELECT LAST_NAME AS 'APELLIDO', FIRST_NAME AS 'NOMBRE'
FROM TEST.EMPLOYEES E
JOIN JOBS ON JOBS.ID = MANAGER_ID
GROUP BY MANAGER_ID;
--29
SELECT MAX(SALARY) FROM TEST.EMPLOYEES; 
--30
SELECT MAX(SALARY) AS 'MAXIMO',MIN(SALARY) AS 'MINIMO',AVG(SALARY) AS 'PROMEDIO' 
FROM (SELECT SUM SALARY AS 'SALADOTODOS' FROM TEST.EMPLOYEES) TEST.EMPLOYEES;
--31
SELECT MAX(SALARY) AS 'MAXIMO',MIN(SALARY) AS 'MINIMO',AVG(SALARY) AS 'PROMEDIO' 
FROM (SELECT SUM HIRE_DATE AS 'TODASLASFECHAS' FROM TEST.EMPLOYEES) TEST.EMPLOYEES;
--32
SELECT COUNT(ID) FROM TEST.EMPLOYEES;
--33
SELECT COUNT(ID) FROM TEST.EMPLOYEES WHERE DEPARMENT_ID = 10;
--34
SELECT COUNT(ID) AS 'TOTAL' FROM TEST.EMPLOYEES GROUP BY DEPARMENT_ID;
--35
SELECT COUNT(ID) AS 'TOTAL' FROM TEST.EMPLOYEES E
JOIN TEST.DEPARMENTS ON TESTDEPARMENT.ID = E.DEPARMENT_ID
JOIN JOBS ON JOBS.ID = MANAGER_ID;
--36
SELECT AVG(SALARY) FROM TEST.EMPLOYEES GROUP BY DEPARMENT_ID;
--37
SELECT AVG(SALARY) AS 'SALARIO PROMEDIO' FROM TEST.EMPLOYEES WHERE 'SALARIO PROMEDIO' < 1200 
GROUP BY DEPARMENT_ID;
--38
INSERT INTO TEST.DEPARMENTS
           ([ID]
           ,[DEPARMENT_NAME]
           ,[LOCATION_ID]
           ,[DEPARTMENT_DESCRIPTION])

VALUES (99,Andara,1,null)
--39
INSERT INTO TEST.EMPLOYEES [TEST].[EMPLOYEES]
           ([ID]
           ,[FIRST_NAME]
           ,[LAST_NAME]
           ,[SALARY]
           ,[DEPARTMENT_ID]
           ,[JOB_ID])

VALUES (20,Pedro,Lopez,200,10,30, 3)
--40
UPDATE TEST.EMPLOYEES SET SALARY = 1100 WHERE TEST.EMPLOYEES.ID = 10;
--41
UPDATE TEST.EMPLOYEES SET SALARY * 2 WHERE TEST.EMPLOYEES.ID = 11;
--42
UPDATE TEST.EMPLOYEES SET (SELECT SUM (SALARY + 10%) WHERE TEST.EMPLOYEES.ID = 11;
--43
SELECT * FROM (DELETE FROM DEPARMENTS WHERE DEPARMENT_ID > 50) DEPARMENTS;
--44
DELETE FROM DEPARMENTS WHERE DEPARMENT_ID == 40;
--45
CREATE FUNCTION fn_AntiguedadEmpleado(int Id)
RETURNS INT
BEGIN
	DECLARE Antiguedad INT;
	SELECT YEAR(CURDATE()) - TEST.EMPLOYEED.HIRE_DATE INTO Angtiguedad FROM TEST.EMPLOYEED WHERE TEST.EMPLOYEED.id=id;
RETURN Antiguedad;
END
--46
CREATE PROCEDURE sp_GetNombreAntiguedad()
BEGIN
	SELECT CONCAT (TEST.EMPLOYEES.FIRST_NAME AS 'Nombre',",",TEST.EMPLOYEES.LAST_NAME AS APELLIDO), fn_AntiguedadEmpleado(id) AS Antiguedad
	FROM TEST.EMPLOYEES
	ORDER BY Antiguedad DESC
END
   