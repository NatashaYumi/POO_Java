/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author yumi-
 */
public class Base {
    private static ArrayList<Contato> contatosList;
    public static ArrayList<Contato> getContatosList(){
        if(contatosList == null){
            contatosList = new ArrayList<>();
            contatosList.add(new Contato("Fulano", "(13)99999-9999", new Data(1, 1, 2001)));
            contatosList.add(new Contato("Cicrano", "(13)99999-9992", new Data(2, 2, 2002)));
            contatosList.add(new Contato("Beltrano", "(13)99999-9993", new Data(3, 3, 2003)));
        }
        return contatosList;
    }
}
