package testlei;
import java.sql.*;

public class testclass{
    //根据ID查找
    public static String[] selectm(String inp){
        dbSelect dbSelect=new dbSelect();
        return dbSelect.dbSelect(inp);
    }
    //根据名称查找
    public static String[] selectn(String inp){
        dbSelect dbSelect=new dbSelect();
        return dbSelect.dbSelectn(inp);
    }
    //update——query
    public static String[] upS(String inp){
        dbSelect dbSelect=new dbSelect();
        return dbSelect.upS(inp);
    }
    public static String DELETE(String inp){
        dbSelect dbSelect=new dbSelect();
        dbSelect.DELETE(inp);
        return "";
    }
}



class dbSelect {
    Connection c = null;
    Statement stmt = null;
    String[] dbSelect(String inp){
        String[] outp=new String[4];

        try {
            Class.forName( "org.postgresql.Driver");
            c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
            c.setAutoCommit( false);
            System.out.println( "Connect to database gaussdb successfully !");
            stmt = c.createStatement();
            String sql="SELECT * FROM titleakas where titleid=";
            sql=sql+inp;
            ResultSet rs = stmt.executeQuery( sql );
            while ( rs.next() ) {
                String tconst = rs.getString( "titleid");
                String ordering = String.valueOf(rs.getInt( "ordering"));
                String title = rs.getString( "title");
                String region = rs.getString( "region");
                String language = rs.getString( "language");



                outp[0]=title;
                outp[1]=region;
                outp[2]=language;
                outp[3]=ordering;

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

    String[] dbSelectn(String inp){
        String[] out=new String[1000];
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
                String isAdult = String.valueOf(rs.getInt( "isAdult"));
                String startYear = String.valueOf(rs.getInt( "startYear"));
                String endYear = String.valueOf(rs.getInt( "endYear"));
                String runtimeMinutes = String.valueOf(rs.getInt( "runtimeMinutes"));
                String genres = rs.getString( "genres");

                out[0+m]=tconst;
                out[1+m]=titleType;
                out[2+m]=primaryTitle;
                out[3+m]=originalTitle;
                out[4+m]=tconst;
                out[5+m]=titleType;
                out[6+m]=primaryTitle;
                out[7+m]=originalTitle;
                out[8+m]=tconst;

                m=m+9;
            }
            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+ ": "+ e.getMessage() );
            System.exit( 0);
        }

        String[] outp=new String[m];
        for(int i=0;i<m;i++){
            outp[i]=out[i];
        }
        return outp;
    }


    String[] upS(String in_tconst){
        String[] out=new String[1000];
        int m=0;
        try {
            Class.forName( "org.postgresql.Driver");
            c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
            c.setAutoCommit( false);
            System.out.println( "Connect to database gaussdb successfully !");
            stmt = c.createStatement();
            String sql="SELECT * FROM titlebasics where tconst='"+in_tconst+"'";
            ResultSet rs = stmt.executeQuery( sql );
            while ( rs.next() ) {
                String tconst = rs.getString( "tconst");
                String titleType = rs.getString( "titleType");
                String primaryTitle = rs.getString( "primaryTitle");
                String originalTitle = rs.getString( "originalTitle");
                String isAdult = String.valueOf(rs.getInt( "isAdult"));
                String startYear = String.valueOf(rs.getInt( "startYear"));
                String endYear = String.valueOf(rs.getInt( "endYear"));
                String runtimeMinutes = String.valueOf(rs.getInt( "runtimeMinutes"));
                String genres = rs.getString( "genres");

                out[0+m]=tconst;
                out[1+m]=titleType;
                out[2+m]=primaryTitle;
                out[3+m]=originalTitle;
                out[4+m]=isAdult;
                out[5+m]=startYear;
                out[6+m]=endYear;
                out[7+m]=runtimeMinutes;
                out[8+m]=genres;

                m=m+9;
            }
            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+ ": "+ e.getMessage() );
            System.exit( 0);
        }

        String[] outp=new String[m];
        for(int i=0;i<m;i++){
            outp[i]=out[i];
        }
        return outp;
    }

    void DELETE(String in_tconst){
        int m=0;
        try {
            Class.forName( "org.postgresql.Driver");
            c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
            c.setAutoCommit( false);
            System.out.println( "Connect to database gaussdb successfully !");
            stmt = c.createStatement();
            String sql="DELETE  FROM titlebasics where tconst="+in_tconst;
            stmt.executeUpdate(sql);
            c.commit();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+ ": "+ e.getMessage() );
            System.exit( 0);
        }
    }
}
