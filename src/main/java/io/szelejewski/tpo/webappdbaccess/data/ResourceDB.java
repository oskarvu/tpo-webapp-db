package io.szelejewski.tpo.webappdbaccess.data;

import io.szelejewski.tpo.webappdbaccess.bussiness.Resource;
import io.szelejewski.tpo.webappdbaccess.bussiness.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.TreeMap;

public class ResourceDB {
  private static final ConnectionPool pool = ConnectionPool.getInstance();

  public static Map<String, Resource> selectUserResources(User user) {
    Map<String, Resource> userIdResourceMap = new TreeMap<>();
    String query =
        "SELECT resource_id, name FROM users_resources ur INNER JOIN"
            + " resources r ON ur.resource_id = r.id WHERE user_id = ?";
    setUserResourcesMapEntry(userIdResourceMap, user.getId(), query);
    return userIdResourceMap;
  }

  public static String selectResourceContent(String resourceId) {
    String query = "SELECT content FROM resources WHERE id = ?";
    try (Connection connection = pool.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(query)) {
      preparedStatement.setString(1, resourceId);
      try (ResultSet resultSet = preparedStatement.executeQuery()) {
        if (resultSet.next()) {
          return resultSet.getString("content");
        }
        return null;
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    }
  }

  private static void setUserResourcesMapEntry(Map<String, Resource> map, String id, String query) {
    try (Connection connection = pool.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(query)) {
      preparedStatement.setString(1, id);
      try (ResultSet resultSet = preparedStatement.executeQuery()) {
        while (resultSet.next()) {
          Resource resource = new Resource();
          resource.setContent(null);
          resource.setId(resultSet.getString("resource_id"));
          resource.setName(resultSet.getString("name"));
          map.put(resource.getId(), resource);
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }
}
