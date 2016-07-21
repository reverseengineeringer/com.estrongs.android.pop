package com.duapps.ad.stats;

import com.duapps.ad.entity.AdData;
import com.duapps.ad.inmobi.IMData;
import org.json.JSONObject;

public class p
  extends a
{
  public AdData d;
  private String e;
  private int f;
  private long g;
  private int h;
  private String i;
  private int j;
  private com.duapps.ad.base.p k;
  private String l;
  private int m;
  private boolean n;
  private boolean o;
  
  public p(AdData paramAdData)
  {
    super(w, x, y);
    d = paramAdData;
    g = a;
    f = l;
    e = c;
    h = m;
    i = h;
    j = z;
    l = v;
    m = G;
  }
  
  public static p a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    do
    {
      return null;
      paramJSONObject = paramJSONObject.getJSONObject("data");
      if ("download".equals(paramJSONObject.optString("channel"))) {
        return new p(AdData.a(paramJSONObject));
      }
    } while (!"inmobi".equals(paramJSONObject.optString("channel")));
    return new p(IMData.b(paramJSONObject));
  }
  
  public static JSONObject a(p paramp)
  {
    JSONObject localJSONObject = new JSONObject();
    if (d == null) {
      return localJSONObject;
    }
    if ((d instanceof IMData))
    {
      localJSONObject.put("data", AdData.a(d));
      return localJSONObject;
    }
    localJSONObject.put("data", IMData.a(d));
    return localJSONObject;
  }
  
  public String a()
  {
    return e;
  }
  
  public void a(com.duapps.ad.base.p paramp)
  {
    k = paramp;
  }
  
  public void a(boolean paramBoolean)
  {
    n = paramBoolean;
  }
  
  public int b()
  {
    return f;
  }
  
  public void b(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public long c()
  {
    return g;
  }
  
  public int d()
  {
    return h;
  }
  
  public int e()
  {
    return j;
  }
  
  public com.duapps.ad.base.p f()
  {
    return k;
  }
  
  public AdData g()
  {
    return d;
  }
  
  public boolean h()
  {
    return h == 0;
  }
  
  public boolean i()
  {
    return h == 1;
  }
  
  public String j()
  {
    return i;
  }
  
  public int k()
  {
    return b;
  }
  
  public String l()
  {
    return c;
  }
  
  public String m()
  {
    return l;
  }
  
  public int n()
  {
    return m;
  }
  
  public boolean o()
  {
    return n;
  }
  
  public boolean p()
  {
    return o;
  }
  
  public boolean q()
  {
    return d.a > 0L;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */