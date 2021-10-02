SET SQL_MODE=
"NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=1;
START TRANSACTION;
SET time_zone ="-05:00";

CREATE TABLE user_tb(
	Dni int(8) NOT NULL,
	nombre varchar(100) NOT NULL,
	apellidos varchar(170) NOT NULL,
	rol int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_tb VALUES (12345678, "Pepito", "Carranza Goñe", 0), (12345679, "Mario", "Perez Dominguez", 1);

CREATE TABLE boleta_tb (
	Id int(10) NOT NULL,
	user_dni int (8) NOT NULL,
	fecha DATE NOT NULL,
	monto DOUBLE(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE boleta_tb
  ADD FOREIGN KEY (user_dni) REFERENCES user_tb (Dni);

INSERT INTO boleta_tb VALUES (001, 12345679, 2021-10-02, 1900.00), (002, 12345679, 2021-11-02, 1900.00);

ALTER TABLE user_tb
  ADD PRIMARY KEY (Dni);


ALTER TABLE boleta_tb
  ADD PRIMARY KEY (Id);	


ALTER TABLE boleta_tb
  ADD FOREIGN KEY (user_dni) REFERENCES user_tb (Dni);
	