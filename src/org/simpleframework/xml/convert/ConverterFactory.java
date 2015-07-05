package org.simpleframework.xml.convert;

import java.lang.reflect.Constructor;

class ConverterFactory
{
  private final ConverterCache cache = new ConverterCache();
  
  private Constructor getConstructor(Class paramClass)
  {
    paramClass = paramClass.getDeclaredConstructor(new Class[0]);
    if (!paramClass.isAccessible()) {
      paramClass.setAccessible(true);
    }
    return paramClass;
  }
  
  private Converter getConverter(Class paramClass)
  {
    Constructor localConstructor = getConstructor(paramClass);
    if (localConstructor == null) {
      throw new ConvertException("No default constructor for %s", new Object[] { paramClass });
    }
    return getConverter(paramClass, localConstructor);
  }
  
  private Converter getConverter(Class paramClass, Constructor paramConstructor)
  {
    paramConstructor = (Converter)paramConstructor.newInstance(new Object[0]);
    if (paramConstructor != null) {
      cache.cache(paramClass, paramConstructor);
    }
    return paramConstructor;
  }
  
  public Converter getInstance(Class paramClass)
  {
    Converter localConverter2 = (Converter)cache.fetch(paramClass);
    Converter localConverter1 = localConverter2;
    if (localConverter2 == null) {
      localConverter1 = getConverter(paramClass);
    }
    return localConverter1;
  }
  
  public Converter getInstance(Convert paramConvert)
  {
    paramConvert = paramConvert.value();
    if (paramConvert.isInterface()) {
      throw new ConvertException("Can not instantiate %s", new Object[] { paramConvert });
    }
    return getInstance(paramConvert);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ConverterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */