ALTER TABLE Alamat
    -> ADD CONSTRAINT propinsi_const
    -> FOREIGN KEY (propinsi)
    -> REFERENCES Propinsi(kode_propinsi)
    -> ON DELETE CASCADE
    -> ON UPDATE CASCADE;

SHOW CREATE TABLE Alamat;