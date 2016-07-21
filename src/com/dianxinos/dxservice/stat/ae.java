package com.dianxinos.dxservice.stat;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

final class ae
{
  private final Context a;
  private final Map<String, v> b;
  
  public ae(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public v a(String paramString)
  {
    if (b.containsKey(paramString)) {
      return (v)b.get(paramString);
    }
    v localv = new v(a, paramString);
    b.put(paramString, localv);
    return localv;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */