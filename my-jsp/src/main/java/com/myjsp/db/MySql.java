package com.myjsp.db;

import java.sql.*;

public class MySql {

    public static void main(String[] args) {
        Connection con = null;
        Statement st =null;
        ResultSet rs =null;

        String server = "localhost"; // MySQL 서버 주소
        String database = "member"; // MySQL DATABASE 이름
        String user_name = "root"; //  MySQL 서버 아이디
        String password = "password"; // MySQL 서버 비밀번호

        // 1.드라이버 로딩
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(" !! <JDBC 오류> Driver load 오류: " + e.getMessage());
            e.printStackTrace();
        }

        // 2.연결
        try {
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&characterEncoding=euckr","root","password");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fboard?useUnicode=true&characterEncoding=euckr","root","password");
//            con = DriverManager.getConnection("jdbc:mysql://" + server + "/" + database + "?useSSL=false", user_name, password);
            System.out.println("정상적으로 연결되었습니다.");

            st = con.createStatement();
//            st.executeUpdate("create table woori(id char(10) primary key, name char(10))");
            rs = st.executeQuery("select * from freeboard");
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 0; i < rsmd.getColumnCount(); i++) {
                System.out.println(rsmd.getColumnName(i+1));
            }
        } catch(SQLException e) {
            System.err.println("con 오류:" + e.getMessage());
            e.printStackTrace();
        }

        // 3.해제
        try {
            if(st != null) st.close();
            if(con != null) con.close();
        } catch (SQLException e) {}

    }
}