package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

class ConversionInstance
  implements Instance
{
  private final Context context;
  private final Class convert;
  private final Value value;
  
  public ConversionInstance(Context paramContext, Value paramValue, Class paramClass)
  {
    context = paramContext;
    convert = paramClass;
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
      localObject2 = getInstance(convert);
      localObject1 = localObject2;
    } while (localObject2 == null);
    setInstance(localObject2);
    return localObject2;
  }
  
  public Object getInstance(Class paramClass)
  {
    return context.getInstance(paramClass).getInstance();
  }
  
  public Class getType()
  {
    return convert;
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
 * Qualified Name:     org.simpleframework.xml.core.ConversionInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */