package org.simpleframework.xml.core;

class ClassInstance
  implements Instance
{
  private Instantiator creator;
  private Class type;
  private Object value;
  
  public ClassInstance(Instantiator paramInstantiator, Class paramClass)
  {
    creator = paramInstantiator;
    type = paramClass;
  }
  
  public Object getInstance()
  {
    if (value == null) {
      value = creator.getObject(type);
    }
    return value;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isReference()
  {
    return false;
  }
  
  public Object setInstance(Object paramObject)
  {
    value = paramObject;
    return paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */