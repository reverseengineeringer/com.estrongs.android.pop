package com.estrongs.android.k;

import java.util.HashMap;

public class f
{
  private HashMap<String, String> a;
  
  public f(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap == null)
    {
      a = new HashMap();
      return;
    }
    a = paramHashMap;
  }
  
  public String a(String paramString)
  {
    if (a.containsKey(paramString)) {
      return (String)a.get(paramString);
    }
    return null;
  }
  
  public void a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */