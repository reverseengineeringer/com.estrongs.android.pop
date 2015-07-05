package org.simpleframework.xml.convert;

public class Registry
{
  private final RegistryBinder binder = new RegistryBinder();
  private final ConverterCache cache = new ConverterCache();
  
  private Converter create(Class paramClass)
  {
    Converter localConverter = binder.lookup(paramClass);
    if (localConverter != null) {
      cache.cache(paramClass, localConverter);
    }
    return localConverter;
  }
  
  public Registry bind(Class paramClass1, Class paramClass2)
  {
    if (paramClass1 != null) {
      binder.bind(paramClass1, paramClass2);
    }
    return this;
  }
  
  public Registry bind(Class paramClass, Converter paramConverter)
  {
    if (paramClass != null) {
      cache.cache(paramClass, paramConverter);
    }
    return this;
  }
  
  public Converter lookup(Class paramClass)
  {
    Converter localConverter2 = (Converter)cache.fetch(paramClass);
    Converter localConverter1 = localConverter2;
    if (localConverter2 == null) {
      localConverter1 = create(paramClass);
    }
    return localConverter1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.Registry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */