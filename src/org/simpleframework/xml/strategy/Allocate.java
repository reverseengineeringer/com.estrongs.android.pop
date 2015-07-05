package org.simpleframework.xml.strategy;

import java.util.Map;

class Allocate
  implements Value
{
  private String key;
  private Map map;
  private Value value;
  
  public Allocate(Value paramValue, Map paramMap, String paramString)
  {
    value = paramValue;
    map = paramMap;
    key = paramString;
  }
  
  public int getLength()
  {
    return value.getLength();
  }
  
  public Class getType()
  {
    return value.getType();
  }
  
  public Object getValue()
  {
    return map.get(key);
  }
  
  public boolean isReference()
  {
    return false;
  }
  
  public void setValue(Object paramObject)
  {
    if (key != null) {
      map.put(key, paramObject);
    }
    value.setValue(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Allocate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */