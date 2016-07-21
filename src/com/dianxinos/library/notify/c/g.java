package com.dianxinos.library.notify.c;

import android.content.Context;
import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.Map;

public class g
{
  private static final Map<String, c> a = new LinkedHashMap();
  
  public static c a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    synchronized (a)
    {
      if (a.containsKey(paramString))
      {
        paramString = (c)a.get(paramString);
        return paramString;
      }
    }
    return null;
  }
  
  public static void a(Context arg0)
  {
    synchronized (a)
    {
      if (a.size() > 0) {
        return;
      }
      ??? = new b();
      a(???.a(), ???);
      ??? = new d();
      a(???.a(), ???);
      ??? = new h();
      a(???.a(), ???);
      ??? = new f();
      a(???.a(), ???);
      ??? = new a();
      a(???.a(), ???);
      return;
    }
  }
  
  public static boolean a(String arg0, c paramc)
  {
    if ((TextUtils.isEmpty(???)) || (paramc == null)) {}
    while (!???.equals(paramc.a())) {
      return false;
    }
    synchronized (a)
    {
      if (a.containsKey(paramc.a())) {
        return false;
      }
    }
    a.put(paramc.a(), paramc);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */