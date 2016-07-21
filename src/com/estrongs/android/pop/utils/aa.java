package com.estrongs.android.pop.utils;

import java.util.HashMap;
import java.util.Map;

public class aa
{
  private Map<String, String> a;
  
  public static aa a()
  {
    return ac.a();
  }
  
  public void a(String paramString)
  {
    if (a == null) {
      a = new HashMap();
    }
    a.put(paramString, paramString);
  }
  
  public String b(String paramString)
  {
    if (a == null) {
      a = new HashMap();
    }
    return (String)a.get(paramString);
  }
  
  public void b()
  {
    if (a != null)
    {
      a.clear();
      a = null;
    }
  }
  
  public void c(String paramString)
  {
    if (a != null) {
      a.remove(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */