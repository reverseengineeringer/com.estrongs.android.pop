package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;
import org.simpleframework.xml.transform.Transformer;

class Support
  implements Filter
{
  private final Instantiator creator;
  private final ScannerFactory factory;
  private final Filter filter;
  private final Matcher matcher;
  private final Transformer transform;
  
  public Support()
  {
    this(new PlatformFilter());
  }
  
  public Support(Filter paramFilter)
  {
    this(paramFilter, new EmptyMatcher());
  }
  
  public Support(Filter paramFilter, Matcher paramMatcher)
  {
    transform = new Transformer(paramMatcher);
    factory = new ScannerFactory();
    creator = new Instantiator();
    matcher = paramMatcher;
    filter = paramFilter;
  }
  
  private String getClassName(Class paramClass)
  {
    Class localClass = paramClass;
    if (paramClass.isArray()) {
      localClass = paramClass.getComponentType();
    }
    paramClass = localClass.getSimpleName();
    if (localClass.isPrimitive()) {
      return paramClass;
    }
    return Reflector.getName(paramClass);
  }
  
  public Instance getInstance(Class paramClass)
  {
    return creator.getInstance(paramClass);
  }
  
  public Instance getInstance(Value paramValue)
  {
    return creator.getInstance(paramValue);
  }
  
  public String getName(Class paramClass)
  {
    String str = getScanner(paramClass).getName();
    if (str != null) {
      return str;
    }
    return getClassName(paramClass);
  }
  
  public Class getPrimitive(Class paramClass)
  {
    Class localClass;
    if (paramClass == Double.TYPE) {
      localClass = Double.class;
    }
    do
    {
      return localClass;
      if (paramClass == Float.TYPE) {
        return Float.class;
      }
      if (paramClass == Integer.TYPE) {
        return Integer.class;
      }
      if (paramClass == Long.TYPE) {
        return Long.class;
      }
      if (paramClass == Boolean.TYPE) {
        return Boolean.class;
      }
      if (paramClass == Character.TYPE) {
        return Character.class;
      }
      if (paramClass == Short.TYPE) {
        return Short.class;
      }
      localClass = paramClass;
    } while (paramClass != Byte.TYPE);
    return Byte.class;
  }
  
  public Scanner getScanner(Class paramClass)
  {
    return factory.getInstance(paramClass);
  }
  
  public Transform getTransform(Class paramClass)
  {
    return matcher.match(paramClass);
  }
  
  public boolean isFloat(Class paramClass)
  {
    if (paramClass == Double.class) {}
    while ((paramClass == Float.class) || (paramClass == Float.TYPE) || (paramClass == Double.TYPE)) {
      return true;
    }
    return false;
  }
  
  public boolean isPrimitive(Class paramClass)
  {
    if (paramClass == String.class) {}
    while ((paramClass.isEnum()) || (paramClass.isPrimitive())) {
      return true;
    }
    return transform.valid(paramClass);
  }
  
  public Object read(String paramString, Class paramClass)
  {
    return transform.read(paramString, paramClass);
  }
  
  public String replace(String paramString)
  {
    return filter.replace(paramString);
  }
  
  public boolean valid(Class paramClass)
  {
    return transform.valid(paramClass);
  }
  
  public String write(Object paramObject, Class paramClass)
  {
    return transform.write(paramObject, paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Support
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */