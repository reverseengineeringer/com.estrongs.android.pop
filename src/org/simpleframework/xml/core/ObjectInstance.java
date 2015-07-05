package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

class ObjectInstance
  implements Instance
{
  private final Context context;
  private final Class type;
  private final Value value;
  
  public ObjectInstance(Context paramContext, Value paramValue)
  {
    type = paramValue.getType();
    context = paramContext;
    value = paramValue;
  }
  
  public Object getInstance()
  {
    Object localObject1;
    if (value.isReference()) {
      localObject1 = value.getValue();
    }
    Object localObject2;
    do
    {
      return localObject1;
      localObject2 = getInstance(type);
      localObject1 = localObject2;
    } while (value == null);
    value.setValue(localObject2);
    return localObject2;
  }
  
  public Object getInstance(Class paramClass)
  {
    return context.getInstance(paramClass).getInstance();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isReference()
  {
    return value.isReference();
  }
  
  public Object setInstance(Object paramObject)
  {
    if (value != null) {
      value.setValue(paramObject);
    }
    return paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ObjectInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */