package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.WeakCache;

class ScannerBuilder
  extends WeakCache<Class, Scanner>
{
  public Scanner build(Class<?> paramClass)
  {
    Scanner localScanner = (Scanner)fetch(paramClass);
    Object localObject = localScanner;
    if (localScanner == null)
    {
      localObject = new ScannerBuilder.Entry(paramClass);
      cache(paramClass, localObject);
    }
    return (Scanner)localObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ScannerBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */