CREATE TABLE Usuario(
		ID INTEGER NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Tipo INTEGER,
    Puntuacion INTEGER,
    Fecha_Registro DATE, 
    CONSTRAINT ID_Usuario_PK PRIMARY KEY (ID)
);

CREATE TABLE Categoria(
    ID INTEGER NOT NULL,
    Descripcion VARCHAR(45) NOT NULL,
    CONSTRAINT ID_Categoria_PK PRIMARY KEY (ID)
);

CREATE TABLE Articulo(
		ID                INTEGER NOT NULL,
   	ID_Autor          INTEGER,
    Texto             CLOB,
    Suma_Votos        INTEGER,
    Cantidad_Votos    INTEGER,
    ID_Categoria      INTEGER,
    Fecha_Publicacion DATE,
    Publicado         INTEGER, -- Boolean no existe en Oracle
    CONSTRAINT ID_Articulo_PK  PRIMARY KEY (ID),
    CONSTRAINT ID_Autor_FK     FOREIGN KEY (ID_Autor)     REFERENCES Usuario(ID),
    CONSTRAINT ID_Categoria_FK FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID)
);

