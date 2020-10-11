package io.szelejewski.tpo.webappdbaccess.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Utils {
  private static final ConnectionPool pool = ConnectionPool.getInstance();

  private Utils() {}

  public static boolean isSingleValueQueryResultSetNotEmpty(
      String columnName, String tableName, String whereClauseLeft, String whereClauseRight) {
    String query =
        String.format("SELECT %s FROM %s WHERE %s = ?", columnName, tableName, whereClauseLeft);
    try (Connection connection = pool.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(query)) {
      preparedStatement.setString(1, whereClauseRight);
      try (ResultSet resultSet = preparedStatement.executeQuery()) {
        return resultSet.next();
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return false;
    }
  }
}
