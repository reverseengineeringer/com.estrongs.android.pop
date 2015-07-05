package org.simpleframework.xml.strategy;

class Loader
{
  private static ClassLoader getCallerClassLoader()
  {
    return Loader.class.getClassLoader();
  }
  
  private static ClassLoader getClassLoader()
  {
    return Thread.currentThread().getContextClassLoader();
  }
  
  public Class load(String paramString)
  {
    ClassLoader localClassLoader2 = getClassLoader();
    ClassLoader localClassLoader1 = localClassLoader2;
    if (localClassLoader2 == null) {
      localClassLoader1 = getCallerClassLoader();
    }
    return localClassLoader1.loadClass(paramString);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Loader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */