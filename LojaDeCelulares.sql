create database db_LojaDeCelulares;

use db_LojaDeCelulares;

create table tbl_clientes (
	ID_cliente integer primary key auto_increment,
    Nome_cliente varchar(50) not null,
    Telefone_cliente varchar(255) not null,
    Email_cliente varchar(255)
);

create table tbl_marcas (
	ID_Marca integer primary key auto_increment,
    Nome_Marca varchar(50)
);

create table tbl_sistemas (
	ID_Sistema integer primary key auto_increment,
    Nome_Sistema varchar(50)
);

create table tbl_celulares (
	ID_Celular integer primary key auto_increment,
    Nome_Celular varchar(50) not null,
    ID_Marca integer not null,
    ID_Sistema integer not null,
    
    constraint fk_ID_Marca foreign key (ID_Marca)
    references tbl_marcas (ID_Marca) on delete cascade,
    
    constraint fk_ID_Sistema foreign key (ID_Sistema)
    references tbl_Sistemas (ID_Sistema) on delete cascade
);

create table tbl_Vendas (
	ID_Venda integer primary key auto_increment,
    Data_venda date not null,
	Preco_Venda decimal(6,2) not null,
    ID_Celular integer not null,
    ID_Cliente integer not null,
    
    constraint fk_ID_Celular foreign key (ID_Celular)
    references tbl_celulares (ID_Celular) on delete cascade,
    
    constraint fk_ID_Cliente foreign key (ID_Cliente)
    references tbl_clientes (ID_Cliente) on delete cascade
);

insert into tbl_Marcas (Nome_Marca)
values
('samsung'),
('Motorola'),
('Xiaomi'),
('Apple'),
('LG'),
('Realme'),
('Asus'),
('Nokia'),
('Philco'),
('Huawei'),
('OnePlus')
;

insert into tbl_Sistemas (Nome_Sistema)
values
('Android'),
('IOS')
;

insert into tbl_Celulares (Nome_Celular, ID_Marca, ID_Sistema)
values
('iPhone 13 Pro', 4, 2),
('iPhone 13 Mini', 4, 2),
('iPhone 12 Pro Max', 4, 2),
('iPhone SE', 4, 2),
('iPhone 11 Pro', 4, 2),
('iPhone XS', 4, 2),
('iPhone XR', 4, 2),
('iPhone X', 4, 2),
('iPhone 8', 4, 2),
('Redmi Note 4X', 3, 1),
('Redmi 5 Plus', 3, 1),
('Redmi 4X', 3, 1),
('Redmi 8', 3, 1),
('Redmi 9T', 3, 1),
('Redmi 9S', 3, 1),
('Redmi 6', 3, 1),
('Mi 10T Pro', 3, 1),
('Mi 8 Lite', 3, 1),
('Redmi S21', 3, 1),
('Redmi Note 5 Pro', 3, 1),
('Mi 10T', 3, 1),
('Mi A2 Lite', 3, 1),
('Realme GT Neo', 6, 1),
('Realme X3 SuperZoom', 6, 1),
('Realme Q3s', 6, 1),
('Realme 8s 5G', 6, 1),
('Realme GT Master Explorer', 6, 1),
('Realme C20A', 6, 1),
('Realme Q3 Pro 5G', 6, 1),
('Realme 8', 6, 1),
('Realme C21', 6, 1),
('ROG Phone 5', 7, 1),
('Zenfone 8', 7, 1),
('ROG Phone 3', 7, 1),
('Zenfone 7 Pro ZS671KS', 7, 1),
('ROG Phone II', 7, 1),
('Zenfone Max Plus (M2) ZB634KL', 7, 1),
('Galaxy M22', 1, 1),
('Galaxy A52s 5G', 1, 1),
('Galaxy Z Fold3 5G', 1, 1),
('Galaxy A22', 1, 1),
('Galaxy A32', 1, 1),
('Galaxy A52 5G', 1, 1),
('Galaxy M12', 1, 1),
('Edge 20 Pro', 2, 1),
('Edge+', 2, 1),
('Edge 20', 2, 1),
('Moto G100', 2, 1),
('Moto G 5G Plus', 2, 1),
('Edge', 2, 1),
('Moto G60', 2, 1),
('Moto G9 Plus', 2, 1),
('One Fusion+', 2, 1),
('W41', 5, 1),
('Folder 2', 5, 1),
('K41S', 5, 1),
('K61', 5, 1),
('Q31', 5, 1),
('Q61', 5, 1),
('Velvet', 5, 1),
('Velvet 5G', 5, 1),
('W10 Alpha', 5, 1),
('Wing 5G', 5, 1),
('1.4', 8, 1),
('C01 Plus', 8, 1),
('C10', 8, 1),
('G10', 8, 1),
('X10', 8, 1),
('XR20', 8, 1),
('2 V Tella', 8, 1),
('C1 Plus', 8, 1),
('C2', 8, 1),
('C5 Endi', 8, 1),
('PCE 01', 9, 1),
('PCE 02', 9, 1),
('Hit PCS 01', 9, 1),
('Hit Plus', 9, 1),
('Hit Maxs', 9, 1),
('Honor 7s', 10, 1),
('Y9', 10, 1),
('nova 5T', 10, 1),
('P30 Lite', 10, 1),
('Y9s', 10, 1),
('P40 Pro', 10, 1),
('Nord CE 5G', 11, 1),
('Nord N10 5G', 11, 1),
('Nord N100', 11, 1),
('8', 11, 1),
('5T', 11, 1),
('6T', 11, 1),
('6T McLaren', 11, 1),
('X', 11, 1),
('One', 11, 1);

insert into tbl_Clientes (Nome_Cliente, Telefone_Cliente, Email_Cliente)
values
('Agatha','93910-6813','agathacatarinamoreira-88@renatoseguros.com'),
('Benjamin','93963-7062','benjaminjuliodarosa_@bfgadvogados.com'),
('Lavínia','93843-0227','laviniasandra1523@institutodainfancia.com.br'),
('Cláudia','92724-5637','cclaudiaeve@habby-appe.com.br'),
('Sophie','92578-1114','ssophiejuliana@contjulioroberto.com.br'),
('Julio','93923-0065','juliolorenzodepaula.@cedda.com.br'),
('Sueli','93545-8248','suelimirellabaptista_@dcabr.org.br'),
('Agatha','92840-6962','agathajaquelined@endoimplantes.com.br'),
('Sebastião','92725-8954','sebastiaonathankevinbrito_@cfaraujo.eng.br'),
('Breno','92977-9726','brenoraimundoribeiro_@ipk.org.br'),
('Tânia','93780-7874','tanialaisterezadamota_@ozzape.com'),
('Thiago','93575-9687','thiagoyurifigueiredo_@gmai.com'),
('Diogo','92912-4922','ddiogoanthonyvieira@netwis.com.br'),
('Pietra','93676-7954','pietramayagomes@bmalaw.com.br'),
('Elias','92591-0859','eliasryanmendes_@acmsaopaulo.org');

insert into tbl_Vendas (Data_Venda, Preco_Venda, ID_Celular, ID_Cliente)
values
('20200901', 8359.00, 1, 1),
('20200206', 2562.00, 6, 2),
('20201217', 1905.00, 9, 3),
('20200517', 714.00, 28, 4),
('20201228', 1389.00, 13, 5),
('20210816', 1629.99, 14, 6),
('20211214', 1649.15, 15, 7),
('20210709', 1198.84, 16, 8),
('20210818', 1097.83, 26, 9),
('20211130', 1169.39, 38, 10),
('20210513', 1304.29, 42, 11),
('20211207', 1649.80, 51, 12),
('20211122', 2880.09, 69, 13),
('20210111', 1699.82, 82, 14),
('20211221', 1434.11, 25, 15)
;

select * from tbl_clientes;
select * from tbl_marcas;
select * from tbl_sistemas;
select * from tbl_celulares;
select * from tbl_vendas;

select Tbl_Celulares.Nome_Celular as Celulares, Tbl_Marcas.Nome_Marca as Marcas, Tbl_Sistemas.Nome_Sistema as Sistema
from Tbl_Celulares
inner join Tbl_Marcas
on Tbl_Celulares.ID_Marca = Tbl_Marcas.ID_Marca
inner join Tbl_Sistemas
on Tbl_Celulares.ID_Sistema = Tbl_Sistemas.ID_Sistema;

select tbl_Vendas.Data_Venda as Data_, Tbl_Vendas.Preco_Venda as Preco, Tbl_Celulares.Nome_Celular as Celular, 
Tbl_Clientes.Nome_Cliente as Cliente
from Tbl_Vendas
inner join Tbl_Celulares
on Tbl_Vendas.ID_Celular = Tbl_Celulares.ID_Celular
inner join tbl_Clientes
on Tbl_Vendas.ID_Cliente = tbl_Clientes.ID_Cliente;