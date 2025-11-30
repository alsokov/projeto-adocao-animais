INSERT INTO Animal (Nome, Raca, Idade, Status)
VALUES
('Luna', 'Vira-lata', 2, 'Disponível'),
('Thor', 'Pastor Alemão', 4, 'Disponível'),
('Mimi', 'Persa', 1, 'Adotado'),
('Bob', 'Golden Retriever', 3, 'Disponível'),
('Frajola', 'Siamês', 2, 'Disponível');

-- POPULANDO TABELA ADOTANTE
INSERT INTO Adotante (NomeCompleto, CPF, Telefone, Endereco, Email)
VALUES
('Mariana Silva', '12345678901', '11987654321', 'Rua A, 100', 'mariana@email.com'),
('Carlos Pereira', '98765432100', '11999998888', 'Rua B, 200', 'carlos@email.com'),
('Ana Costa', '45612378955', '11922223333', 'Rua C, 300', 'ana@email.com');

-- POPULANDO TABELA FUNCIONARIO
INSERT INTO Funcionario (Nome, Cargo, Telefone)
VALUES
('João Ribeiro', 'Atendente', '11955556666'),
('Paula Mendes', 'Supervisora', '11977778888');

-- POPULANDO TABELA ABRIGO
INSERT INTO Abrigo (Nome, Endereco, Telefone)
VALUES
('Abrigo Bom Lar', 'Avenida Principal, 500', '1133334444'),
('Patinhas Felizes', 'Rua das Flores, 120', '1144445555');

-- POPULANDO TABELA ADOCACAO
INSERT INTO Adocao (ID_Animal, ID_Adotante, ID_Funcionario, ID_Abrigo, DataAdocao)
VALUES
(3, 1, 1, 1, '2024-01-10'),
(1, 2, 2, 1, '2024-02-15'),
(2, 3, 1, 2, '2024-03-01');
DELETE FROM Adocao;
DELETE FROM Adotante;
DELETE FROM Animal;
DELETE FROM Funcionario;
DELETE FROM Abrigo;
DELETE FROM Adocao;
DELETE FROM Adotante;
DELETE FROM Animal;
DELETE FROM Funcionario;
DELETE FROM Abrigo;
DELETE FROM Adocao;
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Adoacao;
TRUNCATE TABLE Animal;
TRUNCATE TABLE Adotante;
TRUNCATE TABLE Funcionario;
TRUNCATE TABLE Abrigo;

SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Adocao;
TRUNCATE TABLE Animal;
TRUNCATE TABLE Adotante;
TRUNCATE TABLE Funcionario;
TRUNCATE TABLE Abrigo;

SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Adocao;
TRUNCATE TABLE Animal;
TRUNCATE TABLE Adotante;
TRUNCATE TABLE Funcionario;
TRUNCATE TABLE Abrigo;

SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Adocao;
TRUNCATE TABLE Animal;
TRUNCATE TABLE Adotante;
TRUNCATE TABLE Funcionario;
TRUNCATE TABLE Abrigo;

SET FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Adocao;
SET SQL_SAFE_UPDATES = 1;
DELETE FROM Adotante;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Adotante;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Adotante;
INSERT INTO Adocao (ID_Animal, ID_Adotante, ID_Funcionario, ID_Abrigo, DataAdocao)
VALUES 
(3, 7, 1, 1, '2024-01-10'),
(1, 8, 2, 1, '2024-02-15'),
(2, 9, 1, 2, '2024-03-01');
SELECT * 
FROM Adotante
WHERE Endereco LIKE 'Rua A%';
SELECT * 
FROM Animal
ORDER BY NomeAnimal ASC;
DESCRIBE Animal;
SELECT * 
FROM Animal
ORDER BY nome ASC;
SELECT * 
FROM Adotante
LIMIT 2;
SELECT a.NomeCompleto AS Adotante, an.NomeAnimal AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.ID_Animal;
SELECT a.NomeCompleto AS Adotante, an.nome AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.id;
SELECT a.NomeCompleto AS Adotante, an.nome AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.animal;
SELECT * FROM Adocao;
SELECT a.NomeCompleto AS Adotante, an.nome AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.id;
SELECT * FROM Animal;
SELECT a.NomeCompleto AS Adotante, an.nome AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.id;
SHOW COLUMNS FROM Animal;
SELECT a.NomeCompleto AS Adotante, an.nome AS Animal, ad.DataAdocao
FROM Adocao ad
JOIN Adotante a ON ad.ID_Adotante = a.ID_Adotante
JOIN Animal an ON ad.ID_Animal = an.ID_Animal;
SELECT a.NomeCompleto AS Adotante, COUNT(ad.ID_Adocao) AS TotalAdocoes
FROM Adotante a
LEFT JOIN Adocao ad ON a.ID_Adotante = ad.ID_Adotante
GROUP BY a.ID_Adotante;




