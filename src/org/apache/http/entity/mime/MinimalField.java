package org.apache.http.entity.mime;

public class MinimalField
{
  private final String name;
  private final String value;
  
  MinimalField(String paramString1, String paramString2)
  {
    name = paramString1;
    value = paramString2;
  }
  
  public String getBody()
  {
    return value;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(name);
    localStringBuilder.append(": ");
    localStringBuilder.append(value);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.MinimalField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */