<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("EUC-KR");%>
<%
String idt = request.getParameter("idt");
String passwd= request.getParameter("passwd");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
String tel = request.getParameter("tel");
String zip = request.getParameter("zip");

Timestamp register=new Timestamp(System.currentTimeMillis());
Connection conn=null;
PreparedStatement pstmt=null;
String str="";

try{
String jdbcUrl="jdbc:mysql://localhost/db?serverTimezone=UTC";
String dbId="root";
String dbPass="tjdtjeo20";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
String sql= "insert into member values (null,?,?,?,?,?,?,?)";
pstmt=conn.prepareStatement(sql);
pstmt.setString(1,idt);
pstmt.setString(2,passwd);
pstmt.setTimestamp(3,register);
pstmt.setString(4,name);
pstmt.setString(5,addr);
pstmt.setString(6,tel);
pstmt.setString(7,zip);


pstmt.executeUpdate();
out.println("member 테이블에 새로운 레코드를 추가했습니다.");
}catch(Exception e){
e.printStackTrace();
out.println("member 테이블에 새로운 레코드를 추가에 실패했습니다");
}finally{
if(pstmt != null)
try{pstmt.close();}catch(SQLException sqle){}
if(conn != null)
try{conn.close();}catch(SQLException sqle){}
}
%>