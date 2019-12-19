ALTER TABLE jcbunagan.employee
ADD CONSTRAINT jcbunagan.employee.id FOREIGN KEY (resto_id) REFERENCES jcbunagan.resto(resto_id);