package com.duapps.ad.base;

import android.os.SystemClock;
import com.duapps.ad.entity.AdModel;
import org.json.JSONException;
import org.json.JSONObject;

class v
  extends al
{
  v(u paramu, long paramLong) {}
  
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
        l.a("ToolboxCacheManager", "getWall sType :" + b.e + ", response ->" + ((JSONObject)localObject2).toString());
        localObject2 = b.i.b(b.g);
        b = a.toString();
        c = System.currentTimeMillis();
        a = b.g;
        b.i.a((ad)localObject2);
        localObject1 = new AdModel(b.a, b.d, b.e, (JSONObject)localObject1, c);
        m.a(t.a(b.i)).a(h);
        b.i.a((AdModel)localObject1);
        b.h.a(paramInt, localObject1);
        long l = c;
        r.a(t.a(b.i), b.d, l);
        com.duapps.ad.stats.b.a(t.a(b.i), b.d, paramInt, SystemClock.elapsedRealtime() - a);
        return;
      }
      catch (JSONException paramak)
      {
        l.a("ToolboxCacheManager", "getWall sType :" + b.e + ",parse JsonException :", paramak);
        b.h.a(2000, com.duapps.ad.b.d.b());
        com.duapps.ad.stats.b.a(t.a(b.i), b.d, -101, SystemClock.elapsedRealtime() - a);
        return;
      }
      if (paramInt == 304)
      {
        l.c("ToolboxCacheManager", "Url->" + b.f + " 304 called.");
        paramak = b.i.b(b.g);
        if (b == null)
        {
          b.h.a(1001, com.duapps.ad.b.b.b());
          return;
        }
        c = System.currentTimeMillis();
        b.i.a(paramak);
        localObject1 = new JSONObject(b);
        localObject2 = ((JSONObject)localObject1).getJSONObject("datas");
        l.a("ToolboxCacheManager", "getWall sType :" + b.e + " from cache, response ->" + ((JSONObject)localObject1).toString());
        paramak = new AdModel(b.a, b.d, b.e, (JSONObject)localObject2, c);
        b.h.a(200, paramak);
      }
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    l.c("ToolboxCacheManager", "getWall sType :" + b.e + ", parse failed: " + paramString);
    b.h.a(2001, com.duapps.ad.b.e.b());
    com.duapps.ad.stats.b.a(t.a(b.i), b.d, paramInt, SystemClock.elapsedRealtime() - a);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */