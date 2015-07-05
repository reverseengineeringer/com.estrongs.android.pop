package org.simpleframework.xml.convert;

class RegistryBinder
{
  private final ClassCache cache = new ClassCache();
  private final ConverterFactory factory = new ConverterFactory();
  
  private Converter create(Class paramClass)
  {
    return factory.getInstance(paramClass);
  }
  
  public void bind(Class paramClass1, Class paramClass2)
  {
    cache.cache(paramClass1, paramClass2);
  }
  
  public Converter lookup(Class paramClass)
  {
    paramClass = (Class)cache.fetch(paramClass);
    if (paramClass != null) {
      return create(paramClass);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.RegistryBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */