package org.simpleframework.xml.transform;

public class RegistryMatcher
  implements Matcher
{
  private final RegistryMatcher.Cache<Transform> transforms = new RegistryMatcher.Cache();
  private final RegistryMatcher.Cache<Class> types = new RegistryMatcher.Cache();
  
  private Transform create(Class paramClass)
  {
    Class localClass = (Class)types.fetch(paramClass);
    if (localClass != null) {
      return create(paramClass, localClass);
    }
    return null;
  }
  
  private Transform create(Class paramClass1, Class paramClass2)
  {
    paramClass2 = (Transform)paramClass2.newInstance();
    if (paramClass2 != null) {
      transforms.cache(paramClass1, paramClass2);
    }
    return paramClass2;
  }
  
  public void bind(Class paramClass1, Class paramClass2)
  {
    types.cache(paramClass1, paramClass2);
  }
  
  public void bind(Class paramClass, Transform paramTransform)
  {
    transforms.cache(paramClass, paramTransform);
  }
  
  public Transform match(Class paramClass)
  {
    Transform localTransform2 = (Transform)transforms.fetch(paramClass);
    Transform localTransform1 = localTransform2;
    if (localTransform2 == null) {
      localTransform1 = create(paramClass);
    }
    return localTransform1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.RegistryMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */