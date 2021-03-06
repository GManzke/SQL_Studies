INSERT INTO ATOR (NOME)
	VALUES ('ATOR1');

INSERT INTO ATOR (NOME)
	VALUES ('ATOR2');

INSERT INTO ATOR (NOME)
	VALUES ('ATOR3');

INSERT INTO ATOR (NOME)
	VALUES ('ATOR4');


INSERT INTO FILME (NOME)
	VALUES ('FILME1');

INSERT INTO FILME (NOME)
	VALUES ('FILME2');

INSERT INTO FILME (NOME)
	VALUES ('FILME3');

INSERT INTO FILME (NOME)
	VALUES ('FILME4');


INSERT INTO USUARIO (NOME)
	VALUES ('USUARIO1');

INSERT INTO USUARIO (NOME)
	VALUES ('USUARIO2');

INSERT INTO USUARIO (NOME)
	VALUES ('USUARIO3');

INSERT INTO USUARIO (NOME)
	VALUES ('USUARIO4');


INSERT INTO FILME_ATORES (FILMEID, ATORID)
	VALUES (1, 1);

INSERT INTO FILME_ATORES (FILMEID, ATORID)
	VALUES (2, 2);

INSERT INTO FILME_ATORES (FILMEID, ATORID)
	VALUES (3, 3);

INSERT INTO FILME_ATORES (FILMEID, ATORID)
	VALUES (4, 4);


INSERT INTO FILME_USUARIOS (FILMEID, USUARIOID, DATAVISTA, NOTA)
	VALUES (1, 1, '2020-01-28 08:20:00 PM', 4);

INSERT INTO FILME_USUARIOS (FILMEID, USUARIOID, DATAVISTA, NOTA)
	VALUES (2, 2, '2020-01-28 09:20:00 PM', 6);

INSERT INTO FILME_USUARIOS (FILMEID, USUARIOID, DATAVISTA, NOTA)
	VALUES (3, 3, '2020-01-28 07:20:00 PM', 3);

INSERT INTO FILME_USUARIOS (FILMEID, USUARIOID, DATAVISTA, NOTA)
	VALUES (4, 4, '2020-01-28 08:50:00 PM', 2);


/* COMANDOS */

SELECT * FROM FILME_USUARIOS
	WHERE DATAVISTA BETWEEN ('2020-01-28  08:00:00 PM') AND ('2020-01-28 11:59:00 PM');

SELECT TOP 5 USUARIO.NOME, COUNT(FILME_USUARIOS.FILMEID) FILMES 
	FROM FILME_USUARIOS
		INNER JOIN USUARIO ON USUARIO.ID = FILME_USUARIOS.USUARIOID GROUP BY NOME ORDER BY FILMES DESC;

SELECT FILME.NOME, AVG(FILME_USUARIOS.NOTA) NOTAMEDIA
	FROM FILME_USUARIOS
		INNER JOIN FILME ON FILME.ID = FILME_USUARIOS.FILMEID GROUP BY NOME ORDER BY NOTAMEDIA DESC;

SELECT FILME_USUARIOS.FILMEID, COUNT(FILME_USUARIOS.DATAVISTA) VISUALIZAÇÕES
	FROM FILME_USUARIOS
		LEFT JOIN FILME_ATORES ON FILME_ATORES.FILMEID = FILME_USUARIOS.FILMEID group by FILME_USUARIOS.FILMEID;