package kybmig.ssm;

import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.*;

public class JDBCDemo {
    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }

    public static MysqlDataSource getDataSource() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("12345");
        dataSource.setServerName("127.0.0.1");
        dataSource.setDatabaseName("ssm");

        // 用来设置时区和数据库连接的编码
        try {
            dataSource.setCharacterEncoding("UTF-8");
            dataSource.setServerTimezone("Asia/Shanghai");
            Utility.log("url: %s", dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dataSource;
    }

    public static void addBySQL(String content) {
        MysqlDataSource ds = getDataSource();
        String sqlInsert = String.format("INSERT INTO `Todo` (content) VALUES ('%s')", content);

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            statement.executeUpdate(sqlInsert);

            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void selectBySQL() {
        MysqlDataSource ds = getDataSource();
        String sql = String.format("select * from `Todo`");

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                log("id: %s", rs.getInt("id"));
                log("content: %s", rs.getString("content"));
            }

            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    public static void selectOneBySQL() {
        MysqlDataSource ds = getDataSource();
        String sql = String.format("select * from `Todo` where id = %s", 2);

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            rs.first();
            log("id: %s", rs.getInt("id"));
            log("content: %s", rs.getString("content"));

            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void selectByIdSQLInjection(String content) {
        MysqlDataSource ds = getDataSource();
        String sql = String.format("select * from `ssm`.`Todo` where id = %s", content);

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                log("result: %s", rs.getInt("id"));
                log("result: %s", rs.getString("content"));

            }

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void selectBySQLSafe(String content) {
        MysqlDataSource ds = getDataSource();
        String sql = "select * from `ssm`.`Todo` where id = ?";

        try {
            Connection connection = ds.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, content);


            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                log("result: %s", rs.getInt("id"));
                log("result: %s", rs.getString("content"));

            }

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {
//        addBySQL("vvvv");
//        selectBySQL();
//        selectOneBySQL();
//        selectByIdSQLInjection("1 or true");
//        selectBySQLSafe("qqqq or true");
        selectBySQLSafe("1 or true");

    }
}
