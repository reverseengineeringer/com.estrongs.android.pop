package com.duapps.ad.base;

import android.os.SystemClock;
import com.duapps.ad.entity.AdModel;
import org.json.JSONException;
import org.json.JSONObject;

class z
  extends al
{
  z(y paramy, long paramLong) {}
  
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
        l.a("ToolboxCacheManager", "getOnlineWall sType :" + b.e + ", response ->" + ((JSONObject)localObject2).toString());
        localObject2 = b.j.b(b.h);
        b = a.toString();
        c = System.currentTimeMillis();
        a = b.h;
        b.j.a((ad)localObject2);
        localObject1 = new AdModel(b.a, b.d, b.e, (JSONObject)localObject1, c);
        m.a(t.a(b.j)).a(h);
        b.i.a(paramInt, localObject1);
        long l = c;
        r.a(t.a(b.j), b.d, l);
        com.duapps.ad.stats.b.c(t.a(b.j), b.d, paramInt, SystemClock.elapsedRealtime() - a);
        return;
      }
      catch (JSONException paramak)
      {
        l.a("ToolboxCacheManager", "getOnlineWall sType :" + b.e + ",parse JsonException :", paramak);
        b.i.a(2000, com.duapps.ad.b.d.b());
        com.duapps.ad.stats.b.c(t.a(b.j), b.d, -101, SystemClock.elapsedRealtime() - a);
        return;
      }
      if (paramInt == 304)
      {
        l.c("ToolboxCacheManager", "Url->" + b.g + " 304 called.");
        localObject1 = b.j.b(b.h);
        if (b == null)
        {
          b.i.a(1001, com.duapps.ad.b.b.b());
          return;
        }
        c = System.currentTimeMillis();
        b.j.a((ad)localObject1);
        localObject2 = new JSONObject(b).getJSONObject("datas");
        l.a("ToolboxCacheManager", "getOnlineWall sType :" + b.e + " from cache, response ->" + paramak);
        paramak = new AdModel(b.a, b.d, b.e, (JSONObject)localObject2, c);
        b.i.a(200, paramak);
      }
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    l.c("ToolboxCacheManager", "getOnlineWall sType :" + b.e + ", parse failed: " + paramString);
    b.i.a(2001, com.duapps.ad.b.e.b());
    com.duapps.ad.stats.b.c(t.a(b.j), b.d, paramInt, SystemClock.elapsedRealtime() - a);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */