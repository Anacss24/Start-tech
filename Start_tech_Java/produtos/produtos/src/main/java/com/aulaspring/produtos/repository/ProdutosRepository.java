package com.aulaspring.produtos.repository;

import com.aulaspring.produtos.model.Produtos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProdutosRepository extends JpaRepository<Produtos, Integer> {
    Optional<Produtos> findIndicadoByidProduto(int id);


    List<Produtos> findBynomeProdutoContaining(String name);
}
