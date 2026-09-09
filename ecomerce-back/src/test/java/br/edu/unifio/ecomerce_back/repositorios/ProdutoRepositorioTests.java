package br.edu.unifio.ecomerce_back.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.math.BigDecimal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.ecomerce_back.entidades.Categoria;
import br.edu.unifio.ecomerce_back.entidades.Produto;
import br.edu.unifio.ecomerce_back.repositorios.CategoriaRepositorio;
import br.edu.unifio.ecomerce_back.repositorios.ProdutoRepositorio;

@SpringBootTest
public class ProdutoRepositorioTests {
    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Test 
    public void deveSalvarUmProdutoNovo () {
        var produto = new Produto ();
        produto.setNome("Notebook Lenovo Legion 5i");
        produto.setDescricao("Processador I7 13th, SSD de 2TB, 16GB de RAM");
        produto.setPreco(new BigDecimal("12570.30"));
        produto.setEstoque(Short.parseShort("10"));

        Categoria categoria = categoriaRepositorio.findById(Short.parseShort("1")).orElseThrow();
        produto.setCategoria(categoria);

        produtoRepositorio.save(produto);

        assertNotNull(produto.getId());
        assertEquals(6, produto.getId());
    }
}
