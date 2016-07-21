package com.dianxinos.library.notify.dispatcher;

import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.Map;

public class q
{
  private static Map<String, s> a = new LinkedHashMap();
  
  public static String a(String paramString, int paramInt)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramInt <= 0)) {
      return null;
    }
    s locals;
    synchronized (a)
    {
      locals = (s)a.get(paramString);
      if (locals == null) {
        return null;
      }
    }
    if ((paramString.equals(b)) && (paramInt == c)) {
      return a;
    }
    return null;
  }
  
  public static boolean a(String arg0, String paramString2, int paramInt)
  {
    if (TextUtils.isEmpty(???)) {}
    while ((TextUtils.isEmpty(paramString2)) || (paramInt <= 0)) {
      return false;
    }
    s locals = new s(null);
    a = ???;
    b = paramString2;
    c = paramInt;
    synchronized (a)
    {
      a.put(paramString2, locals);
      return true;
    }
  }
  
  public static void b(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    synchronized (a)
    {
      s locals = (s)a.get(paramString);
      if ((locals != null) && (paramString.equals(b)) && (c == paramInt)) {
        a.remove(paramString);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.dispatcher.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */