select * from curso inner join nivel on (nivel.codigonivel = curso.codigonivel);

select * from curso inner join nivel using (codigonivel);