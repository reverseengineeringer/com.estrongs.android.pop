package com.duapps.ad.base;

import android.os.SystemClock;
import com.duapps.ad.entity.AdModel;
import org.json.JSONException;
import org.json.JSONObject;

class x
  extends al
{
  x(w paramw, long paramLong) {}
  
  public void a(int paramInt, ak paramak)
  {
    if ((paramInt == 200) && (paramak != null)) {}
    for (;;)
    {
      Object localObject2;
      Object localObject1;
      try
      {
        localObject2 = a;
        localObject1 = ((JSONObject)localObject2).getJSONObject("datas");
        l.a("ToolboxCacheManager", "getWall sType :" + b.d + ", response ->" + ((JSONObject)localObject2).toString());
        localObject2 = b.h.b(b.f);
        b = a.toString();
        c = System.currentTimeMillis();
        a = b.f;
        b.h.a((ad)localObject2);
        localObject1 = new AdModel(b.a, b.c, b.d, (JSONObject)localObject1, c);
        m.a(t.a(b.h)).a(h);
        b.h.a((AdModel)localObject1);
        b.g.a(paramInt, localObject1);
        long l = c;
        r.a(t.a(b.h), b.c, l);
        com.duapps.ad.stats.b.a(t.a(b.h), b.c, paramInt, SystemClock.elapsedRealtime() - a);
        return;
      }
      catch (JSONException paramak)
      {
        l.a("ToolboxCacheManager", "getWall sType :" + b.d + ",parse JsonException :", paramak);
        b.g.a(2000, com.duapps.ad.b.d.b());
        com.duapps.ad.stats.b.a(t.a(b.h), b.c, -101, SystemClock.elapsedRealtime() - a);
        return;
      }
      if (paramInt == 304)
      {
        l.c("ToolboxCacheManager", "Url->" + b.e + " 304 called.");
        paramak = b.h.b(b.f);
        if (b == null)
        {
          b.g.a(1001, com.duapps.ad.b.b.b());
          return;
        }
        c = System.currentTimeMillis();
        b.h.a(paramak);
        localObject1 = new JSONObject(b);
        localObject2 = ((JSONObject)localObject1).getJSONObject("datas");
        l.a("ToolboxCacheManager", "getWall sType :" + b.d + " from cache, response ->" + ((JSONObject)localObject1).toString());
        paramak = new AdModel(b.a, b.c, b.d, (JSONObject)localObject2, c);
        b.g.a(200, paramak);
      }
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    l.c("ToolboxCacheManager", "getWall sType :" + b.d + ", parse failed: " + paramString);
    b.g.a(2001, com.duapps.ad.b.e.b());
    com.duapps.ad.stats.b.a(t.a(b.h), b.c, paramInt, SystemClock.elapsedRealtime() - a);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */