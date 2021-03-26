CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO users 
VALUES 
('ahmed','{noop}ahmed123',1),
('camara','{noop}camara123',1),
('idriss','{noop}idriss123',1),
('almam','{noop}almam123',1),
('ali','{noop}ali123',1);


INSERT INTO authorities 
VALUES 
('ahmed','ROLE_EMPLOYEE'),
('camara','ROLE_EMPLOYEE'),
('camara','ROLE_STUDENT'),
('idriss','ROLE_EMPLOYEE'),
('idriss','ROLE_ADMIN'),
('almam','ROLE_EMPLOYEE'),
('almam','ROLE_ADMIN'),
('ali','ROLE_EMPLOYEE'),
('ali','ROLE_MANAGER');
