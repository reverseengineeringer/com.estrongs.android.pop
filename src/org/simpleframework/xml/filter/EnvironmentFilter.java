package org.simpleframework.xml.filter;

public class EnvironmentFilter
  implements Filter
{
  private Filter filter;
  
  public EnvironmentFilter()
  {
    this(null);
  }
  
  public EnvironmentFilter(Filter paramFilter)
  {
    filter = paramFilter;
  }
  
  public String replace(String paramString)
  {
    String str = System.getenv(paramString);
    if (str != null) {
      return str;
    }
    if (filter != null) {
      return filter.replace(paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.filter.EnvironmentFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */