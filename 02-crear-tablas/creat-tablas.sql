CREATE TABLE usuarios(
id          INT AUTO_INCREMENT  NOT NULL,
nombre      VARCHAR(100) NOT NULL,
email       VARCHAR(100) NOT NULL,
password    VARCHAR(100) NOT NULL,
direccion   VARCHAR(255),
CONSTRAINT pk_usuarios PRIMARY KEY (id)
);