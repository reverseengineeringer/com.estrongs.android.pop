package com.estrongs.android.scanner.b;

import java.util.HashMap;
import java.util.Map;

class d
{
  public final String a;
  public String b;
  public Map<String, d> c;
  
  public d(c paramc, String paramString)
  {
    a = paramString;
    b = null;
    c = new HashMap();
  }
  
  public void a(d paramd)
  {
    if (c.get(a) == null) {
      c.put(a, paramd);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */