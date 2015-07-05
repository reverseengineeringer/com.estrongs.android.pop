package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Value;

class ArrayInstance
  implements Instance
{
  private final int length;
  private final Class type;
  private final Value value;
  
  public ArrayInstance(Value paramValue)
  {
    length = paramValue.getLength();
    type = paramValue.getType();
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
      localObject2 = Array.newInstance(type, length);
      localObject1 = localObject2;
    } while (value == null);
    value.setValue(localObject2);
    return localObject2;
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
 * Qualified Name:     org.simpleframework.xml.core.ArrayInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */