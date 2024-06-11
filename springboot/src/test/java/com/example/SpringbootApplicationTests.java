package com.example;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.sql.*;

@SpringBootTest
class SpringbootApplicationTests {

    @Test
    void contextLoads() {
// 数据库连接信息
        String jdbcUrl = "jdbc:mysql://localhost:3306/ppchat?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useSSL=false&serverTimezone=GMT%2b8"; // 请替换为你的数据库名称
        String username = "root";
        String password = "030626";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            // 加载 MySQL JDBC 驱动
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 创建数据库连接
            connection = DriverManager.getConnection(jdbcUrl, username, password);
            System.out.println("数据库连接成功！");

            // 创建语句对象
            statement = connection.createStatement();

            // 执行查询
            String sql = "SELECT VERSION()";
            resultSet = statement.executeQuery(sql);

            // 处理结果集
            if (resultSet.next()) {
                System.out.println("数据库版本: " + resultSet.getString(1));
            }
        } catch (ClassNotFoundException e) {
            System.out.println("找不到 JDBC 驱动程序类。请确保已添加 JDBC 驱动到项目中。");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("数据库连接失败！");
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
