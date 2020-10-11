package io.szelejewski.tpo.webappdbaccess.data;

import io.szelejewski.tpo.webappdbaccess.bussiness.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static io.szelejewski.tpo.webappdbaccess.data.Utils.isSingleValueQueryResultSetNotEmpty;

public class UserDB {
  private static final ConnectionPool pool = ConnectionPool.getInstance();

  public static User selectUser(String login) {
    String userQuery = "SELECT * FROM users WHERE login = ?";
    try(Connection connection = pool.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(userQuery)) {
      preparedStatement.setString(1, login);
      try (ResultSet resultSet = preparedStatement.executeQuery()) {
        if (resultSet.next()) {
          User user = new User();
          user.setId(resultSet.getString("id"));
          user.setFirstName(resultSet.getString("first_name"));
          user.setLastName(resultSet.getString("last_name"));
          user.setLogin(resultSet.getString("login"));
          user.setResourceMap(ResourceDB.selectUserResources(user));
          return user;
        } else {
          return null;
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    }
  }

  public static boolean userExists(String login) {
    return isSingleValueQueryResultSetNotEmpty("first_name", "users", "login", login);
  }

  public static boolean isPasswordOK(String login, String password) {
    return isSingleValueQueryResultSetNotEmpty("first_name", "users", "password", password);
  }
}
