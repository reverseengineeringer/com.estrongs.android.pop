package com.dianxinos.dxservice.core;

import com.dianxinos.dxservice.a.c;
import java.util.HashMap;
import java.util.Map;

public class e
{
  public static void a(String paramString)
  {
    c.a = paramString;
  }
  
  public static void a(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      c.f.putAll(paramMap);
    }
  }
  
  public static void b(String paramString)
  {
    if ("dev".equals(paramString))
    {
      c.b = true;
      c.c = true;
      c.e = c.c;
      c.d = c.c;
      return;
    }
    if ("test".equals(paramString))
    {
      c.b = true;
      c.c = true;
      c.e = c.c;
      c.d = c.c;
      return;
    }
    if ("prod".equals(paramString))
    {
      c.b = false;
      c.c = false;
      c.e = c.c;
      c.d = c.c;
      return;
    }
    throw new IllegalArgumentException("wrong environment type!");
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */