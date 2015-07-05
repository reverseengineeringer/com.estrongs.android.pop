package com.estrongs.io.archive;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public class a
{
  protected static Map<String, h> a = Collections.synchronizedMap(new LinkedHashMap(5));
  protected static Map<String, Long> b = Collections.synchronizedMap(new LinkedHashMap(5));
  private static boolean c = true;
  private static final Thread d = new b();
  
  static
  {
    d.start();
  }
  
  public static h a(String paramString)
  {
    b.put(paramString, Long.valueOf(System.currentTimeMillis()));
    return (h)a.get(paramString);
  }
  
  public static void a(String paramString, h paramh)
  {
    a.put(paramString, paramh);
    b.put(paramString, Long.valueOf(System.currentTimeMillis()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */