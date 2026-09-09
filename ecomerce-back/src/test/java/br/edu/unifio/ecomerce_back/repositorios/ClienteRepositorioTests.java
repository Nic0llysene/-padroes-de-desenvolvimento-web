package br.edu.unifio.ecomerce_back.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.math.BigDecimal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.ecomerce_back.entidades.Categoria;
import br.edu.unifio.ecomerce_back.entidades.Cliente;
import br.edu.unifio.ecomerce_back.entidades.Produto;

@SpringBootTest 
public class ClienteRepositorioTests {

    @Autowired 
    private ClienteRepositorio clienteRepositorio;

    @Test
     public void deveSalvarUmClienteNovo () {
        var cliente = new Cliente ();
        cliente.setNome("Mauricio");
        cliente.setEmail("Mau12@gmail.com");
        cliente.setTelefone("(43)984132760");

        clienteRepositorio.save(cliente);

        assertNotNull(cliente.getId());
        assertEquals(1, cliente.getId());
    }
}
