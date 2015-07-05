package org.simpleframework.xml.strategy;

class Reference
  implements Value
{
  private Class type;
  private Object value;
  
  public Reference(Object paramObject, Class paramClass)
  {
    value = paramObject;
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
    return true;
  }
  
  public void setValue(Object paramObject)
  {
    value = paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Reference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */