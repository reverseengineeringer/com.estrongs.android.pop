package org.simpleframework.xml.transform;

class ClassTransform
  implements Transform<Class>
{
  private ClassLoader getCallerClassLoader()
  {
    return getClass().getClassLoader();
  }
  
  private static ClassLoader getClassLoader()
  {
    return Thread.currentThread().getContextClassLoader();
  }
  
  public Class read(String paramString)
  {
    ClassLoader localClassLoader2 = getClassLoader();
    ClassLoader localClassLoader1 = localClassLoader2;
    if (localClassLoader2 == null) {
      localClassLoader1 = getCallerClassLoader();
    }
    return localClassLoader1.loadClass(paramString);
  }
  
  public String write(Class paramClass)
  {
    return paramClass.getName();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ClassTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */