use infonew;

select * from sys.tables;

select count(cod_cli) from conjuge;

select cod_cli, count(email_cli) from email group by cod_cli;

select sum(cod_tipocli) from cliente group by cod_tipocli;

select num_ped, count(num_par) from parcela group by num_ped;

select cod_func, Count(cod_dep) from funcionario group by cod_func;

select cod_prod, nome_prod, qtd_estqprod from produto;

select cod_cli, sum(val_ped) from pedido group by cod_cli;

select cod_cli, avg(val_ped) from pedido group by cod_cli;

select cod_cli, max(val_ped) from pedido group by cod_cli;

select cod_cli, min(val_ped) from pedido group by cod_cli;

select cod_est, count(cod_cid) from cidade group by cod_est;

select cod_pais, count(cod_est) from estado group by cod_pais;

select count(cod_cid) from cidade;

select count(cod_est) from estado;

select count(cod_pais) from pais;

select cod_func, sum(val_bonus) from bonus group by cod_func;

select sexo_func, sum(sal_func) from funcionario group by sexo_func;

select sexo_func, max(sal_func) from funcionario group by sexo_func;

select sexo_func, min(sal_func) from funcionario group by sexo_func;

select cod_sta, count(num_ped) from pedido group by cod_sta;

select cod_cli, count(cod_end) from endereco group by cod_cli;

select cod_func, sum(pto_func) from pontuacao group by cod_func;

select cod_func, count(cod_func) from pedido group by cod_func;

select cod_func, avg(pto_func) from Pontuacao group by cod_func;

select cod_func, sum(sal_func) from funcionario group by cod_func;

select avg(renda_cli) from cliente;

select min(sal_func) from funcionario;

select max(renda_cli) from cliente;
