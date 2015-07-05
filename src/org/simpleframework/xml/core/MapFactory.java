package org.simpleframework.xml.core;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

class MapFactory
  extends Factory
{
  public MapFactory(Context paramContext, Type paramType)
  {
    super(paramContext, paramType);
  }
  
  private boolean isMap(Class paramClass)
  {
    return Map.class.isAssignableFrom(paramClass);
  }
  
  public Class getConversion(Class paramClass)
  {
    if (paramClass.isAssignableFrom(HashMap.class)) {
      return HashMap.class;
    }
    if (paramClass.isAssignableFrom(TreeMap.class)) {
      return TreeMap.class;
    }
    throw new InstantiationException("Cannot instantiate %s for %s", new Object[] { paramClass, type });
  }
  
  public Object getInstance()
  {
    Class localClass2 = getType();
    if (!isInstantiable(localClass2)) {}
    for (Class localClass1 = getConversion(localClass2);; localClass1 = localClass2)
    {
      if (!isMap(localClass1)) {
        throw new InstantiationException("Invalid map %s for %s", new Object[] { localClass2, type });
      }
      return localClass1.newInstance();
    }
  }
  
  public Instance getInstance(Value paramValue)
  {
    Class localClass2 = paramValue.getType();
    Class localClass1 = localClass2;
    if (!isInstantiable(localClass2)) {
      localClass1 = getConversion(localClass2);
    }
    if (!isMap(localClass1)) {
      throw new InstantiationException("Invalid map %s for %s", new Object[] { localClass1, type });
    }
    return new ConversionInstance(context, paramValue, localClass1);
  }
  
  public Instance getInstance(InputNode paramInputNode)
  {
    paramInputNode = getOverride(paramInputNode);
    Class localClass = getType();
    if (paramInputNode != null) {
      return getInstance(paramInputNode);
    }
    paramInputNode = localClass;
    if (!isInstantiable(localClass)) {
      paramInputNode = getConversion(localClass);
    }
    if (!isMap(paramInputNode)) {
      throw new InstantiationException("Invalid map %s for %s", new Object[] { paramInputNode, type });
    }
    return context.getInstance(paramInputNode);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MapFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */