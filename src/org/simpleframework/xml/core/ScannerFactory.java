package org.simpleframework.xml.core;

class ScannerFactory
{
  private final ScannerCache cache = new ScannerCache();
  
  public Scanner getInstance(Class paramClass)
  {
    Scanner localScanner2 = (Scanner)cache.get(paramClass);
    Scanner localScanner1 = localScanner2;
    if (localScanner2 == null)
    {
      localScanner1 = new Scanner(paramClass);
      cache.put(paramClass, localScanner1);
    }
    return localScanner1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ScannerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */