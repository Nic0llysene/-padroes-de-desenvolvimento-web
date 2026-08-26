package br.edu.unifio.ecomerce_back.entidades;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
// import lombok.AllArgsConstructor;
// import lombok.NoArgsConstructor;
//import lombok.Data;
import lombok.Getter;
import lombok.Setter;

// @NoArgsConstructor // Bloqueia os construtores padrão
// @AllArgsConstructor // Cria os construtores completos
// @Data // Cria os Getters, Setters e Contrutores, Equals, Hashcode e toString

@Entity //especifica que essa classe é uma entidade (classe que representa tabela)
@Getter //Gera os Getters
@Setter // Gera os Setters
public class Categoria {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Short id;
    
    private String nome;
    private String descricao;

}
