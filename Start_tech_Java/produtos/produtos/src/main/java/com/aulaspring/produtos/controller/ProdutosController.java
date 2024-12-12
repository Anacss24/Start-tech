package com.aulaspring.produtos.controller;

import com.aulaspring.produtos.model.Produtos;
import com.aulaspring.produtos.repository.ProdutosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@RestController
@RequestMapping("/produtos")
public class ProdutosController {

    @Autowired
    ProdutosRepository dbConn;

    @GetMapping("/")
    //Método que retorna todos os registros do banco
    public List<Produtos> findAllRecords(){
        return dbConn.findAll();
    }

    @PostMapping(value = "/inserir", produces = "application/json") // Criar um novo registro
    public Produtos create(@RequestBody Produtos exemplo){
        dbConn.save(exemplo);
        return exemplo;
    }

    // Encontrar um único elemento por id
    @RequestMapping(value = "/buscar/id/{id}", method = RequestMethod.GET)
    public Optional<Produtos> searchById(@PathVariable int id) {
        return dbConn.findById(id);
    }

    // Encontrar elementos por nome do indicado
    @RequestMapping(value = "/buscar/nome/{name}", method = RequestMethod.GET)
    public List<Produtos> searchByName(@PathVariable String name) {
        return dbConn.findBynomeProdutoContaining(name);
    }

    @DeleteMapping(value = "/deletar/{id}", produces = "application/json") // Deletar um registro
    public String delete(@PathVariable int id) {
        Produtos produto =  dbConn.findIndicadoByidProduto(id).get();
        dbConn.delete(produto);
        // return "Registro deletado com sucesso!";
        return "{deleted:" + id + "}";
    }

    @PutMapping(value = "/atualizar/{id}", produces = "application/json") // Atualizar um registro
    public Produtos update(@PathVariable int id, @RequestBody Produtos exemplo) {
        Produtos produtos = dbConn.findIndicadoByidProduto(id).get();
        produtos.setNomeProduto(exemplo.getNomeProduto());
        produtos.setPreco(exemplo.getPreco());
        produtos.setTipo(exemplo.getTipo());
        produtos.setQuantEstoque(exemplo.getQuantEstoque());
        produtos.setDescricao(exemplo.getDescricao());
        dbConn.save(produtos);
        return produtos;
    }

}









