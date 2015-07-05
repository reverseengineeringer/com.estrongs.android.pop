package org.simpleframework.xml.filter;

import java.util.Map;

public class MapFilter
  implements Filter
{
  private Filter filter;
  private Map map;
  
  public MapFilter(Map paramMap)
  {
    this(paramMap, null);
  }
  
  public MapFilter(Map paramMap, Filter paramFilter)
  {
    filter = paramFilter;
    map = paramMap;
  }
  
  public String replace(String paramString)
  {
    Object localObject2 = null;
    if (map != null) {}
    for (Object localObject1 = map.get(paramString);; localObject1 = null)
    {
      if (localObject1 != null) {
        localObject1 = localObject1.toString();
      }
      do
      {
        return (String)localObject1;
        localObject1 = localObject2;
      } while (filter == null);
      return filter.replace(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.filter.MapFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */