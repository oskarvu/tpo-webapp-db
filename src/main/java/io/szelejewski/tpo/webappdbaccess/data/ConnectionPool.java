package io.szelejewski.tpo.webappdbaccess.data;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.*;

public class ConnectionPool {
  private static ConnectionPool pool = null;
  private static BasicDataSource dataSource = null;

  private ConnectionPool() {
    dataSource = new BasicDataSource();
    dataSource.setUrl("jdbc:oracle:thin:@db-oracle.pjwstk.edu.pl:1521:baza");
    dataSource.setUsername("s18231");
    dataSource.setPassword("oracle12");
    dataSource.setMaxWaitMillis(10000);
    dataSource.setMaxIdle(2);
    dataSource.setMinIdle(1);
    dataSource.setMaxOpenPreparedStatements(5);
  }

  public static synchronized ConnectionPool getInstance() {
    if (pool == null) {
      pool = new ConnectionPool();
    }
    return pool;
  }

  public Connection getConnection() {
    try {
      return dataSource.getConnection();
    } catch (SQLException e) {
      return null;
    }
  }

}
