package io.szelejewski.tpo.webappdbaccess.bussiness;

import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;

public class User implements Serializable {
  private String id;
  private String firstName;
  private String lastName;
  private String login;
  private Map<String, Resource> resourceMap = new TreeMap<>();

  public User() {}

  public User(
      String id, String firstName, String lastName, String login, Map<String, Resource> resourceMap) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.login = login;
    this.resourceMap = resourceMap;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getLogin() {
    return login;
  }

  public void setLogin(String login) {
    this.login = login;
  }

  public Map<String, Resource> getResourceMap() {
    return resourceMap;
  }

  public void setResourceMap(Map<String, Resource> resourceMap) {
    this.resourceMap = resourceMap;
  }

  public void addResourceToMap(String key, Resource value) {
    resourceMap.put(key, value);
  }

  public Resource getResourceFromMap(String key) {
    return resourceMap.get(key);
  }
}
