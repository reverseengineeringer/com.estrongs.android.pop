package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;

class PrimitiveFactory
  extends Factory
{
  public PrimitiveFactory(Context paramContext, Type paramType)
  {
    super(paramContext, paramType);
  }
  
  public PrimitiveFactory(Context paramContext, Type paramType, Class paramClass)
  {
    super(paramContext, paramType, paramClass);
  }
  
  public Object getInstance(String paramString, Class paramClass)
  {
    return support.read(paramString, paramClass);
  }
  
  public Instance getInstance(InputNode paramInputNode)
  {
    paramInputNode = getOverride(paramInputNode);
    Class localClass = getType();
    if (paramInputNode == null) {
      return context.getInstance(localClass);
    }
    return new ObjectInstance(context, paramInputNode);
  }
  
  public String getText(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    if (localClass.isEnum()) {
      return support.write(paramObject, localClass);
    }
    return support.write(paramObject, localClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */