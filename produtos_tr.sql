create database loja;

use loja;

create table produtos (
    id_produto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_produto VARCHAR(45) not null,
    preco DECIMAL(9,2) NOT NULL,
    preco_com_desconto DECIMAL(9,2) not null
);

create TRIGGER desconto_trigger before INSERT
on produtos
FOR EACH row
SET NEW.preco_com_desconto = (NEW.preco * 0.90);

INSERT INTO produtos (nome_produto, preco)
values
    ('violão', 600.00),
    ('Cavaquinho', 450.00),
    ('pandeiro', 245.00),
    ('banjo', 920.00),
    ('tantan', 340.00),
    ('flauta transversal', 950.00),
    ('cajon', 530.00),
    ('tamborim', 180.00),
    ('surdo', 680.00),
    ('reco-reco', 120.00)
;

select * from produtos