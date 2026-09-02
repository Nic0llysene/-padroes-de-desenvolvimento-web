insert into categoria (nome, descricao) values ("Alimentos", "Salgados, Doces e Bebidas");
insert into categoria (nome, descricao) values ("Livros", "Livros Técnicos");
insert into categoria (nome, descricao) values ("Eletrônicos", "Aparelhos Eletrônicos");
insert into categoria (nome, descricao) values ("Moda", "Roupas");
insert into categoria (nome, descricao) values ("Saúde", "Medicamentos");

insert into produto (nome, descricao, preco, estoque, categoria_id) values ("Misto Quente", "Pão e Queijo Quente", 9.90, 12, 1);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ("Código Limpo", "Livro do Autor Robert C. Martin", 100.00, 20, 2);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ("Mouse", "Mouse Gamer", 249.90, 12, 3);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ("Camiseta", "Camiseta do One Direction", 59.90, 12, 4);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ("Dipirona", "Remédio para dor de cabeça", 5.00, 200, 5);

insert into cliente (nome, email, telefone) values ("Nicolly", "nicollysene16@gmail.com", "(43)984132760");
insert into cliente (nome, email, telefone) values ("Mauricio", "mauriciogandolfo@gmail.com", "(14)999122957");
insert into cliente (nome, email, telefone) values ("Guilherme", "guilhermesantos@gmail.com", "(14)998384277");
insert into cliente (nome, email, telefone) values ("João Vitor", "joaocarvalhoo@gmail.com", "(43)984880593");
insert into cliente (nome, email, telefone) values ("Julia", "juliasilva@gmail.com", "(43)984230169");

insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-01', "enviado", 100.00, 1);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-08-11', "enviado", 59.90, 2);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-07-20', "enviado", 5.00, 3);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-05-05', "enviado", 9.90, 4);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-08-15', "enviado", 249.90, 5);

insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 59.90, 2, 4);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 100.00, 1, 2);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 5.00, 3, 5);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 9.90, 4, 1);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 249.90, 5, 3);

insert into pagamento (valor, data, status, tipo, pedido_id) values (100.00, '2026-09-01', "pago", "pix", 1);
insert into pagamento (valor, data, status, tipo, pedido_id) values (9.90, '2026-05-05', "pago", "cartão", 4);
insert into pagamento (valor, data, status, tipo, pedido_id) values (249.90, '2026-08-15', "pago", "dinheiro", 5);
insert into pagamento (valor, data, status, tipo, pedido_id) values (100.00, '2026-08-11', "pago", "pix", 2);
insert into pagamento (valor, data, status, tipo, pedido_id) values (100.00, '2026-07-20', "pago", "cartão", 3);
