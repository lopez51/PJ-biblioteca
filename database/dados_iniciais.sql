USE biblioteca_3ano;


DELETE FROM emprestimo;
DELETE FROM aluno;
DELETE FROM livro;
DELETE FROM bibliotecario;


ALTER TABLE emprestimo AUTO_INCREMENT = 1;
ALTER TABLE aluno AUTO_INCREMENT = 1;
ALTER TABLE livro AUTO_INCREMENT = 1;
ALTER TABLE bibliotecario AUTO_INCREMENT = 1;



insert into aluno (nome, serie, turma, telefone) values
('maria', '3º ano', 'a', '11999991111'),
('jose', '3º ano', 'a', '11999992222'),
('daniel', '3º ano', 'b', '11999993333'),
('melany', '3º ano', 'b', '11999994444');

insert into livro (titulo, autor, categoria, status) values
('dom casmurro', 'machado de assis', 'literatura brasileira', 'disponível'),
('o alquimista', 'paulo coelho', 'romance', 'disponível'),
('1984', 'george orwell', 'ficção científica', 'disponível'),
('o pequeno príncipe', 'antoine de saint-exupéry', 'infantil', 'disponível');

insert into bibliotecario (nome, email) values
('ana silva', 'ana.silva@escola.com'),
('carlos sousa', 'carlos.sousa@escola.com');

UPDATE bibliotecario
SET id_usuario = 2
WHERE id_bibliotecario = 1;


UPDATE aluno
SET id_usuario = 3
WHERE id_aluno = 1;