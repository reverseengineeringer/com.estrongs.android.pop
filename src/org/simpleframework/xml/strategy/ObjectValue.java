package org.simpleframework.xml.strategy;

class ObjectValue
  implements Value
{
  private Class type;
  private Object value;
  
  public ObjectValue(Class paramClass)
  {
    type = paramClass;
  }
  
  public int getLength()
  {
    return 0;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public Object getValue()
  {
    return value;
  }
  
  public boolean isReference()
  {
    return false;
  }
  
  public void setValue(Object paramObject)
  {
    value = paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.ObjectValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */