package testlei;
import java.sql.*;

public class testclass{
    //根据ID查找
    public static String selectm(String inp,int n){
        dbSelect dbSelect=new dbSelect();
        return dbSelect.dbSelect(inp,n);
    }
    //根据名称查找
    public static String[] selectn(String inp){
        dbSelect dbSelect=new dbSelect();
        return dbSelect.dbSelectn(inp);
    }
}



class dbSelect {
    Connection c = null;
    Statement stmt = null;
    String dbSelect(String inp,int n){
        String[] outp=new String[4];

        try {
            Class.forName( "org.postgresql.Driver");
            c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
            c.setAutoCommit( false);
            System.out.println( "Connect to database gaussdb successfully !");
            stmt = c.createStatement();
            String sql="SELECT * FROM titlebasics where tconst=";
            sql=sql+inp;
            ResultSet rs = stmt.executeQuery( sql );
            while ( rs.next() ) {
                String tconst = rs.getString( "tconst");
                String titleType = rs.getString( "titleType");
                String primaryTitle = rs.getString( "primaryTitle");
                String originalTitle = rs.getString( "originalTitle");
                int isAdult = rs.getInt( "isAdult");
                int startYear = rs.getInt( "startYear");
                int endYear = rs.getInt( "endYear");
                int runtimeMinutes = rs.getInt( "runtimeMinutes");
                String genres = rs.getString( "genres");

                outp[0]=tconst;
                outp[1]=titleType;
                outp[2]=primaryTitle;
                outp[3]=originalTitle;

            }
            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+ ": "+ e.getMessage() );
            System.exit( 0);
        }
        return outp[n];
    }

    String[] dbSelectn(String inp){
        String[] outp=new String[1000];
        int m=0;
        try {
            Class.forName( "org.postgresql.Driver");
            c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
            c.setAutoCommit( false);
            System.out.println( "Connect to database gaussdb successfully !");
            stmt = c.createStatement();
            String sql="SELECT * FROM titlebasics where \"primaryTitle\" LIKE '%";
            sql=sql+ inp +"%'";
            ResultSet rs = stmt.executeQuery( sql );
            while ( rs.next() ) {
                String tconst = rs.getString( "tconst");
                String titleType = rs.getString( "titleType");
                String primaryTitle = rs.getString( "primaryTitle");
                String originalTitle = rs.getString( "originalTitle");
                int isAdult = rs.getInt( "isAdult");
                int startYear = rs.getInt( "startYear");
                int endYear = rs.getInt( "endYear");
                int runtimeMinutes = rs.getInt( "runtimeMinutes");
                String genres = rs.getString( "genres");

                outp[0+m]=tconst;
                outp[1+m]=titleType;
                outp[2+m]=primaryTitle;
                outp[3+m]=originalTitle;
                m=m+4;
            }
            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+ ": "+ e.getMessage() );
            System.exit( 0);
        }
        return outp;
    }
}
