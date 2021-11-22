/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import web.NatashaDbListener;

/**
 *
 * @author yumi-
 */
public class tasks {
     public static ArrayList<String> getTasks(String userSession) throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = NatashaDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select title from natasha_tasks where user='"+userSession+"'");
        while(rs.next()){
            list.add(rs.getString("title"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static void addTask(String descTarefa, String userSession) throws Exception{
        Connection con = NatashaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into natasha_tasks values('"+descTarefa+"','"+userSession+"')");
        stmt.close();
        con.close();
    }

    public static void removeTask(String descTarefa) throws Exception{
        Connection con = NatashaDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from natasha_tasks where title= '"+descTarefa+"'");
        stmt.close();
        con.close();
    }
    
}
