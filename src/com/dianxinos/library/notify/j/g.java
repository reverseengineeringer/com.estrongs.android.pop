package com.dianxinos.library.notify.j;

import android.content.Context;
import com.dianxinos.library.dxbase.i;
import com.dianxinos.library.notify.c;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

public class g
{
  static Context a = ;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  private static String e = null;
  
  public static String a()
  {
    if (d != null) {
      return d;
    }
    if (a == null) {
      return null;
    }
    d = a.getPackageName();
    return d;
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(String paramString)
  {
    paramString = new File(paramString);
    if ((paramString.exists()) && (!paramString.isDirectory())) {
      paramString.delete();
    }
    if (!paramString.exists()) {
      paramString.mkdirs();
    }
  }
  
  public static String b()
  {
    if (e == null) {
      e = i.a(a()).substring(0, 4);
    }
    return e;
  }
  
  public static String c()
  {
    return "notify";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */