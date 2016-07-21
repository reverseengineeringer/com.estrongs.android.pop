package com.dianxinos.library.notify.download;

import android.content.Context;
import com.dianxinos.library.dxbase.k;
import java.lang.reflect.Method;
import org.apache.http.HttpHost;

public class p
{
  private static Method a;
  
  static
  {
    try
    {
      a = ClassLoader.getSystemClassLoader().loadClass("android.net.Proxy").getDeclaredMethod("getPreferredHttpHost", new Class[] { Context.class, String.class });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static final HttpHost a(Context paramContext, String paramString)
  {
    if (!k.f()) {
      return null;
    }
    if (a != null) {
      try
      {
        paramContext = (HttpHost)a.invoke(null, new Object[] { paramContext, paramString });
        return paramContext;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */