package org.simpleframework.xml.transform;

class ArrayMatcher
  implements Matcher
{
  private final Matcher primary;
  
  public ArrayMatcher(Matcher paramMatcher)
  {
    primary = paramMatcher;
  }
  
  private Transform matchArray(Class paramClass)
  {
    Transform localTransform = primary.match(paramClass);
    if (localTransform == null) {
      return null;
    }
    return new ArrayTransform(localTransform, paramClass);
  }
  
  public Transform match(Class paramClass)
  {
    paramClass = paramClass.getComponentType();
    if (paramClass == Character.TYPE) {
      return new CharacterArrayTransform(paramClass);
    }
    if (paramClass == Character.class) {
      return new CharacterArrayTransform(paramClass);
    }
    if (paramClass == String.class) {
      return new StringArrayTransform();
    }
    return matchArray(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ArrayMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */