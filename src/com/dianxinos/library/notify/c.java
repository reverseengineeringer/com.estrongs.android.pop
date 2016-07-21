package com.dianxinos.library.notify;

import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.DXBEventSource;
import com.dianxinos.library.notify.data.i;
import com.dianxinos.library.notify.data.j;
import com.dianxinos.library.notify.f.a;
import com.dianxinos.library.notify.j.d;
import com.dianxinos.library.notify.network.m;
import java.io.File;

public class c
{
  private static Context a = null;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  
  public static Context a()
  {
    return a;
  }
  
  public static j a(String paramString)
  {
    return com.dianxinos.library.notify.h.c.a().a(paramString);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return null;
    }
    String str2 = d.a(paramString1);
    j localj = a(paramString2);
    String str1 = str2;
    if (localj.b()) {
      if (!paramString1.endsWith(".apk"))
      {
        str1 = str2;
        if (!paramString1.endsWith(".jar")) {}
      }
      else
      {
        str1 = str2 + ".jar";
      }
    }
    if (f == null) {}
    for (boolean bool = false;; bool = f.e()) {
      return new File(a.b(bool, paramString2), str1).getAbsolutePath();
    }
  }
  
  public static void a(g paramg)
  {
    if ((paramg == null) || (!paramg.a())) {
      return;
    }
    com.dianxinos.library.dxbase.e.b = b;
    com.dianxinos.library.dxbase.e.c = b;
    com.dianxinos.library.dxbase.e.a = d;
    a = a.getApplicationContext();
    b = c;
    c = e;
    d = f;
    com.dianxinos.library.notify.c.g.a(a);
    m.a(a);
    DXBEventSource.a(a, null);
    com.dianxinos.library.notify.dispatcher.b.a();
  }
  
  public static boolean a(String paramString, e parame)
  {
    return com.dianxinos.library.notify.b.b.a(paramString, parame);
  }
  
  public static String b()
  {
    if (c == null) {
      return "others";
    }
    return c;
  }
  
  public static String b(String paramString)
  {
    String str = null;
    if (!TextUtils.isEmpty(paramString)) {
      str = com.dianxinos.library.notify.h.c.a().b(paramString);
    }
    return str;
  }
  
  public static String c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */