package de.aflx.sardine;

import de.aflx.sardine.impl.SardineImpl;
import java.net.ProxySelector;

public class SardineFactory
{
  public static Sardine begin()
  {
    return begin(null, null);
  }
  
  public static Sardine begin(String paramString1, String paramString2)
  {
    return begin(paramString1, paramString2, null);
  }
  
  public static Sardine begin(String paramString1, String paramString2, ProxySelector paramProxySelector)
  {
    return new SardineImpl(paramString1, paramString2, paramProxySelector);
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.SardineFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */