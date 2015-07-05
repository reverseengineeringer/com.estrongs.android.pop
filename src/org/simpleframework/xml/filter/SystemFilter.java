package org.simpleframework.xml.filter;

public class SystemFilter
  implements Filter
{
  private Filter filter;
  
  public SystemFilter()
  {
    this(null);
  }
  
  public SystemFilter(Filter paramFilter)
  {
    filter = paramFilter;
  }
  
  public String replace(String paramString)
  {
    String str = System.getProperty(paramString);
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
 * Qualified Name:     org.simpleframework.xml.filter.SystemFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */