package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;

public class hm
{
  private static final String b = hm.class.getSimpleName();
  boolean a;
  private final hn c = new hn();
  private final File d;
  private String e;
  
  public hm()
  {
    this(js.a().c());
  }
  
  public hm(Context paramContext)
  {
    d = paramContext.getFileStreamPath(".flurryinstallreceiver.");
    kg.a(3, b, "Referrer file name if it exists:  " + d);
  }
  
  private void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    e = paramString;
  }
  
  private void c()
  {
    if (a) {
      return;
    }
    a = true;
    kg.a(4, b, "Loading referrer info from file: " + d.getAbsolutePath());
    String str = ls.c(d);
    kg.a(b, "Referrer file contents: " + str);
    b(str);
  }
  
  private void d()
  {
    ls.a(d, e);
  }
  
  public Map<String, List<String>> a(boolean paramBoolean)
  {
    try
    {
      c();
      Map localMap = c.a(e);
      if (paramBoolean) {
        a();
      }
      return localMap;
    }
    finally {}
  }
  
  public void a()
  {
    try
    {
      d.delete();
      e = null;
      a = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      a = true;
      b(paramString);
      d();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public String b()
  {
    try
    {
      c();
      String str = e;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */