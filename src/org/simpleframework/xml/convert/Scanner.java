package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;

abstract interface Scanner
{
  public abstract <T extends Annotation> T scan(Class<T> paramClass);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.Scanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */