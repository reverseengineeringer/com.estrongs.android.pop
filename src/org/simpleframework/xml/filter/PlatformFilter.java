package org.simpleframework.xml.filter;

import java.util.Map;

public class PlatformFilter
  extends StackFilter
{
  public PlatformFilter()
  {
    this(null);
  }
  
  public PlatformFilter(Map paramMap)
  {
    push(new EnvironmentFilter());
    push(new SystemFilter());
    push(new MapFilter(paramMap));
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.filter.PlatformFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */