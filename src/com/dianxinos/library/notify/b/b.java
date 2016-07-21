package com.dianxinos.library.notify.b;

import android.text.TextUtils;
import com.dianxinos.library.notify.e;
import java.util.LinkedHashMap;
import java.util.Map;

public class b
{
  private static Map<String, e> a = new LinkedHashMap();
  
  public static e a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    synchronized (a)
    {
      if (a.containsKey(paramString))
      {
        paramString = (e)a.get(paramString);
        return paramString;
      }
    }
    return null;
  }
  
  public static boolean a(String paramString, e parame)
  {
    if ((TextUtils.isEmpty(paramString)) || (parame == null)) {
      return false;
    }
    synchronized (a)
    {
      if (a.containsKey(paramString)) {
        return false;
      }
    }
    a.put(paramString, parame);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */