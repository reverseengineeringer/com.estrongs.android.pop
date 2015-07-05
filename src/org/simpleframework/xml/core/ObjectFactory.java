package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;

class ObjectFactory
  extends PrimitiveFactory
{
  public ObjectFactory(Context paramContext, Type paramType, Class paramClass)
  {
    super(paramContext, paramType, paramClass);
  }
  
  public Instance getInstance(InputNode paramInputNode)
  {
    paramInputNode = getOverride(paramInputNode);
    Class localClass = getType();
    if (paramInputNode == null)
    {
      if (!isInstantiable(localClass)) {
        throw new InstantiationException("Cannot instantiate %s for %s", new Object[] { localClass, type });
      }
      return context.getInstance(localClass);
    }
    return new ObjectInstance(context, paramInputNode);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ObjectFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */