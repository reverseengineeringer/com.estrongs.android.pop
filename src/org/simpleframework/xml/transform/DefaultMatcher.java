package org.simpleframework.xml.transform;

class DefaultMatcher
  implements Matcher
{
  private Matcher array = new ArrayMatcher(this);
  private Matcher matcher;
  private Matcher primitive = new PrimitiveMatcher();
  private Matcher stock = new PackageMatcher();
  
  public DefaultMatcher(Matcher paramMatcher)
  {
    matcher = paramMatcher;
  }
  
  private Transform matchType(Class paramClass)
  {
    if (paramClass.isArray()) {
      return array.match(paramClass);
    }
    if (paramClass.isPrimitive()) {
      return primitive.match(paramClass);
    }
    return stock.match(paramClass);
  }
  
  public Transform match(Class paramClass)
  {
    Transform localTransform = matcher.match(paramClass);
    if (localTransform != null) {
      return localTransform;
    }
    return matchType(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DefaultMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */