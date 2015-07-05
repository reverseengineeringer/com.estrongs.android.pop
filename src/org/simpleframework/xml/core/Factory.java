package org.simpleframework.xml.core;

import java.lang.reflect.Modifier;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

abstract class Factory
{
  protected Context context;
  protected Class override;
  protected Support support;
  protected Type type;
  
  protected Factory(Context paramContext, Type paramType)
  {
    this(paramContext, paramType, null);
  }
  
  protected Factory(Context paramContext, Type paramType, Class paramClass)
  {
    support = paramContext.getSupport();
    override = paramClass;
    context = paramContext;
    type = paramType;
  }
  
  private Type getPrimitive(Type paramType, Class paramClass)
  {
    Class localClass = support.getPrimitive(paramClass);
    Object localObject = paramType;
    if (localClass != paramClass) {
      localObject = new OverrideType(paramType, localClass);
    }
    return (Type)localObject;
  }
  
  public static boolean isCompatible(Class paramClass1, Class paramClass2)
  {
    Class localClass = paramClass1;
    if (paramClass1.isArray()) {
      localClass = paramClass1.getComponentType();
    }
    return localClass.isAssignableFrom(paramClass2);
  }
  
  public static boolean isInstantiable(Class paramClass)
  {
    int i = paramClass.getModifiers();
    if (Modifier.isAbstract(i)) {}
    while (Modifier.isInterface(i)) {
      return false;
    }
    return true;
  }
  
  public Value getConversion(InputNode paramInputNode)
  {
    paramInputNode = context.getOverride(type, paramInputNode);
    if ((paramInputNode != null) && (override != null)) {
      return new OverrideValue(paramInputNode, override);
    }
    return paramInputNode;
  }
  
  public Object getInstance()
  {
    Class localClass = getType();
    if (!isInstantiable(localClass)) {
      throw new InstantiationException("Type %s can not be instantiated", new Object[] { localClass });
    }
    return localClass.newInstance();
  }
  
  protected Value getOverride(InputNode paramInputNode)
  {
    Value localValue = getConversion(paramInputNode);
    if (localValue != null)
    {
      paramInputNode = paramInputNode.getPosition();
      Class localClass = localValue.getType();
      if (!isCompatible(getType(), localClass)) {
        throw new InstantiationException("Incompatible %s for %s at %s", new Object[] { localClass, type, paramInputNode });
      }
    }
    return localValue;
  }
  
  public Class getType()
  {
    if (override != null) {
      return override;
    }
    return type.getType();
  }
  
  public boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode)
  {
    Class localClass = paramType.getType();
    Type localType = paramType;
    if (localClass.isPrimitive()) {
      localType = getPrimitive(paramType, localClass);
    }
    return context.setOverride(localType, paramObject, paramOutputNode);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */