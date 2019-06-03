package Board;
import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
public class DBConnectionMgr {
private static DBConnectionMgr instance = new DBConnectionMgr();
public DBConnectionMgr() {
}
public static DBConnectionMgr getInstance() {
return instance;
}
//Ŀ�ؼ�Ǯ �̿��Ͽ� ��� ����
protected Connection getConnection() throws Exception {
Context initCtx = new InitialContext();
Context envCtx = (Context) initCtx.lookup("java:comp/env");
DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
return ds.getConnection();
}
}

