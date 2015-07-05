package org.simpleframework.xml.core;

import org.simpleframework.xml.transform.Matcher;
import org.simpleframework.xml.transform.Transform;

class EmptyMatcher
  implements Matcher
{
  public Transform match(Class paramClass)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.EmptyMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */