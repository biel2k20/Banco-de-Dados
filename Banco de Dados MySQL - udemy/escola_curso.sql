/*Tabela Alunos
-Identificador de aluno (chave primária - tipo número)
----->Nome (tipo texto)
----->Data de nascimento (tipo data)
----->Endereço (tipo texto)
----->CPF (tipo texto)*/

ALTER TABLE alunos 
ADD COLUMN nome VARCHAR(100) NOT NULL AFTER id_aluno,
ADD COLUMN data_nascimento DATE NOT NULL AFTER nome,
ADD COLUMN endereco VARCHAR(255) NOT NULL AFTER data_nascimento,
ADD COLUMN cidade VARCHAR(100) NOT NULL AFTER endereco,
ADD COLUMN estado VARCHAR(2) NOT NULL AFTER cidade,
ADD COLUMN cpf VARCHAR(11) NOT NULL AFTER estado;

TRUNCATE TABLE alunos;
INSERT INTO alunos VALUES
(DEFAULT, 'Gabriel Dantas', '1999-03-25', 'Rua Monteiro, 1200', 'João Pessoa', 'PB', '12345678911'),
(DEFAULT,'Diego Mariano', '1990-01-01', 'Av. Ant. Carlos, 6673', 'BELO HORIZONTE', 'MG', '01234567891'),
(DEFAULT,'Fliper Ama', '2017-01-01', 'Av. Ant. Carlos, 6600', 'BELO HORIZONTE', 'MG', '11111111111'),
(DEFAULT,'Pedro Martins', '1997-02-13', 'Av. Brasil, 1000', 'CABO FRIO', 'RJ', '22222222222'),
(DEFAULT,'REGINA CAZÉ', '1920-01-01', 'Rua do Mar', 'SALVADOR', 'BA', '33333333333');

/*Tabela Cursos
-Identtificador de curso (chabe primária - tipo número)
----->Nome (tipo texto)*/

ALTER TABLE cursos 
ADD COLUMN nome VARCHAR(100) NOT NULL AFTER id_curso;

/*Tabela Notas
-Identificador de notas (chave primária - tipo número)
----->Descrição da atividade (tipo texto)
----->Nota (tipo número)*/

ALTER TABLE notas 
ADD COLUMN descricao VARCHAR(100) NOT NULL AFTER id_nota,
ADD COLUMN vlr_nota DECIMAL(5, 2) NOT NULL AFTER descricao;

CREATE TABLE notas (
  id_nota INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_nota)
);

UPDATE alunos
SET nome = 'Gabriel Dantas Santos de Azevêdo'
WHERE id_aluno = 1;