1.--Seleccionar el apellido, oficio, salario, numero de departamento y su nombre 
--de todos los empleados cuyo salario sea mayor de 300000

select EMP.APELLIDO, EMP.OFICIO, EMP.SALARIO, EMP.DEPT_NO 
,DEPT.DNOMBRE, DEPT.DEPT_NO
from EMP
INNER JOIN DEPT
ON EMP.DEPT_NO=DEPT.DEPT_NO
where EMP.SALARIO >=300000;

2.--Mostrar todos los nombres de Hospital con sus nombres de salas
--correspondientes.
select * from HOSPITAL;
select * from SALA;
select HOSPITAL.NOMBRE, SALA.NOMBRE
from HOSPITAL
inner join SALA
on HOSPITAL.HOSPITAL_COD=SALA.HOSPiTAL_COD;

3.Calcular cuántos trabajadores de la empresa hay en cada ciudad.

SELECT DEPT.LOC, COUNT(*) AS TRABAJADORES
FROM DEPT 
JOIN EMP ON DEPT.DEPT_NO = EMP.DEPT_NO
GROUP BY DEPT.LOC;

4.Visualizar cuantas personas realizan cada oficio en cada departamento mostrando el nombre del departamento.
  
SELECT DEPT.DNOMBRE, EMP.OFICIO, COUNT(*) AS PERSONAS
FROM EMP
JOIN DEPT ON EMP.DEPT_NO = DEPT.DEPT_NO
GROUP BY DEPT.DNOMBRE, EMP.OFICIO;

5.Contar cuantas salas hay en cada hospital, mostrando el nombre de las salas y el nombre del hospital.
SELECT SALA.NOMBRE, HOSPITAL.NOMBRE, COUNT (*) AS SALAS
FROM SALA
JOIN HOSPITAL ON SALA.HOSPITAL_COD = HOSPITAL.HOSPITAL_COD
GROUP BY SALA.NOMBRE, HOSPITAL. NOMBRE;




  
6.	Queremos saber cuántos trabajadores se dieron de alta entre el año 1997 y 1998 y en qué departamento.
  7.	Buscar aquellas ciudades con cuatro o más personas trabajando.
  8.	Calcular la media salarial por ciudad.  Mostrar solamente la media para Madrid y Elche.
  9.	Mostrar los doctores junto con el nombre de hospital en el que ejercen, la dirección y el teléfono del mismo
10.	Mostrar los nombres de los hospitales junto con el mejor salario de los empleados de la plantilla de cada hospital.
11.	Visualizar el Apellido, función y turno de los empleados de la plantilla junto con el nombre de la sala y el nombre del hospital con el teléfono.
  12.	Visualizar el máximo salario, mínimo salario de los Directores dependiendo de la ciudad en la que trabajen. Indicar el número total de directores por ciudad.
13.	Averiguar la combinación de que salas podría haber por cada uno de los hospitales.
