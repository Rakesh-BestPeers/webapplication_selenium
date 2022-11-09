package com.xChekVet.pages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.testng.annotations.Test;

@Test
public class JDBCExample {

	 public void JDBC() throws SQLException {

	        Connection con = DriverManager.getConnection("jdbc:postgresql://qa.tab.kitecash.in:8024/kite_tab_qa",
	                "postgres", "Rudrapratap@01November");
	        Statement stmt = con.createStatement();
	        String sql;
	        sql = "SELECT account_id,account_balance,enterprise_id from kite_account.account_balances";
	        ResultSet rs = stmt.executeQuery(sql);
	        System.out.println("Data retrieved from the PostgreSQL database 1");
	        while (rs.next()) {
	            System.out.println(rs.getString(1) + "   ||   "+rs.getString(2) +"   ||   "+ rs.getString(3));
	        }

	        String sql1;
	        sql1 = "SELECT account_type_id,kyc_status,user_id from kite_account.accounts";
	        ResultSet rs1 = stmt.executeQuery(sql1);
	        System.out.println("Data retrieved from the PostgreSQL database 2");
	        while (rs1.next()) {
	            System.out.println(rs1.getString(1) + "   ||   "+rs1.getString(2) +"   ||   "+ rs1.getString(3));
	        }
	    }
	    }