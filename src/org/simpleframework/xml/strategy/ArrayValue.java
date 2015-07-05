package org.simpleframework.xml.strategy;

class ArrayValue
  implements Value
{
  private int size;
  private Class type;
  private Object value;
  
  public ArrayValue(Class paramClass, int paramInt)
  {
    type = paramClass;
    size = paramInt;
  }
  
  public int getLength()
  {
    return size;
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
 * Qualified Name:     org.simpleframework.xml.strategy.ArrayValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */