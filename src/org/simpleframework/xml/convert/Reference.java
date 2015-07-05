package org.simpleframework.xml.convert;

import org.simpleframework.xml.strategy.Value;

class Reference
  implements Value
{
  private Object data;
  private Value value;
  
  public Reference(Value paramValue, Object paramObject)
  {
    value = paramValue;
    data = paramObject;
  }
  
  public int getLength()
  {
    return 0;
  }
  
  public Class getType()
  {
    return data.getClass();
  }
  
  public Object getValue()
  {
    return data;
  }
  
  public boolean isReference()
  {
    return true;
  }
  
  public void setValue(Object paramObject)
  {
    if (value != null) {
      value.setValue(paramObject);
    }
    data = paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.Reference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */