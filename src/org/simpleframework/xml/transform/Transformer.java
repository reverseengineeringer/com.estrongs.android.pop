package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.WeakCache;

public class Transformer
{
  private final TransformCache cache;
  private final Cache error;
  private final Matcher matcher;
  
  public Transformer(Matcher paramMatcher)
  {
    matcher = new DefaultMatcher(paramMatcher);
    cache = new TransformCache();
    error = new WeakCache();
  }
  
  private Transform lookup(Class paramClass)
  {
    Transform localTransform = (Transform)cache.fetch(paramClass);
    if (localTransform != null) {
      return localTransform;
    }
    if (error.contains(paramClass)) {
      return null;
    }
    return match(paramClass);
  }
  
  private Transform match(Class paramClass)
  {
    Transform localTransform = matcher.match(paramClass);
    if (localTransform != null)
    {
      cache.cache(paramClass, localTransform);
      return localTransform;
    }
    error.cache(paramClass, this);
    return localTransform;
  }
  
  public Object read(String paramString, Class paramClass)
  {
    Transform localTransform = lookup(paramClass);
    if (localTransform == null) {
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass });
    }
    return localTransform.read(paramString);
  }
  
  public boolean valid(Class paramClass)
  {
    return lookup(paramClass) != null;
  }
  
  public String write(Object paramObject, Class paramClass)
  {
    Transform localTransform = lookup(paramClass);
    if (localTransform == null) {
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass });
    }
    return localTransform.write(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.Transformer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */