package com.aulaspring.produtos.model;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name ="produtos")
public class Produtos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProduto;

    @Column(name = "nomeproduto")
    private String nomeProduto;

    @Column(name = "preco")
    private BigDecimal preco;

    @Column(name = "tipo")
    private String tipo;

    @Column(name = "quantestoque")
    private int quantEstoque;

    @Column(name = "descricao")
    private String descricao;

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getQuantEstoque() {
        return quantEstoque;
    }

    public void setQuantEstoque(int quantEstoque) {
        this.quantEstoque = quantEstoque;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
