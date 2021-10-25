/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author yumi-
 */
public class Data {
    // Atributos tem um comportamento diferente de uma variável dentro de um método
    // Nos atributos de classe temos os modificadores de acesso:
    // Public, protect, friendly, quando nao coloca nada fica default como friendly
    // Friendly - acessível apenas para nas outras classes dentro do mesmo pacote
    // Para conseguir acessá-los do jsp, declarar como Public
    
    // Os atributos devem ser encapsulados!!! Passam a ser private
    // e cria-se os getter e setters
    
    /**
     * Atributo para armazenar dia da data
     */
    private int dia;
    private int mes;
    private int ano;
    
    /**
     * Construtor que inicializa a data com 01/01/2000
     */
    public Data(){
        // Construtor
        // Define o código a ser executado quando o new é chamado
        dia = 1;
        mes = 1;
        ano = 2000;
    }
    /**
     * Construtor que inicializa a data com os parâmetros
     * @param dia
     * @param mes
     * @param ano 
     */
    public Data(int dia, int mes, int ano){
        // Sobrecarga de construtor (Método especial)
        // Usar o this quando houver uma variavel com o mesmo nome de atributo
        // this.atributo = variavelParametro;
        //this.dia = dia;
        //this.mes = mes;
        //this.ano = ano;
        
        // Usando o método criado
        this.setData(dia, mes, ano);
    }
    
    public String getData(){
        // Método
        // Retornar data inteira, tratando dias menores que 10
        String data = "";
        if (dia<10) data += "0";
        data += dia + "/";
        if (mes<10) data += "0";
        data += mes + "/";
        data += ano;
        return data;
    }
    
    public void setData(int dia, int mes, int ano){
        this.setDia(dia);
        this.setMes(mes);
        this.setAno(ano);
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        // Tratamento para o usuário não inserir mes menor que 1 e maior que 13
        if (dia<1) this.dia = 1;
        else if (dia > 31) this.dia = 31;
        else this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        // Tratamento para o usuário não inserir mes menor que 1 e maior que 13
        if (mes<1) this.mes = 1;
        else if (mes > 12) this.mes = 12;
        else this.mes = mes;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
    
}
