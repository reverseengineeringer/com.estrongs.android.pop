package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

class OverrideValue
  implements Value
{
  private final Class type;
  private final Value value;
  
  public OverrideValue(Value paramValue, Class paramClass)
  {
    value = paramValue;
    type = paramClass;
  }
  
  public int getLength()
  {
    return value.getLength();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public Object getValue()
  {
    return value.getValue();
  }
  
  public boolean isReference()
  {
    return value.isReference();
  }
  
  public void setValue(Object paramObject)
  {
    value.setValue(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.OverrideValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */