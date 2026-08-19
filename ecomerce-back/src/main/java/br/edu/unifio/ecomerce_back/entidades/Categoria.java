package br.edu.unifio.ecomerce_back.entidades;

// import lombok.AllArgsConstructor;
// import lombok.NoArgsConstructor;
//import lombok.Data;
import lombok.Getter;
import lombok.Setter;

// @NoArgsConstructor // Bloqueia os construtores padrão
// @AllArgsConstructor // Cria os construtores completos
// @Data // Cria os Getters, Setters e Contrutores, Equals, Hashcode e toString
@Getter //Gera os Getters
@Setter // Gera os Setters
public class Categoria {
    private Integer id;
    private String nome;
    private String descricao;

}
