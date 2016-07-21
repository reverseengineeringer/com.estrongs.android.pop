package com.duapps.ad.base;

import android.os.SystemClock;
import com.duapps.ad.inmobi.IMDataModel;
import org.json.JSONException;
import org.json.JSONObject;

class ab
  extends al
{
  ab(aa paramaa, long paramLong) {}
  
  public void a(int paramInt, ak paramak)
  {
    if ((paramInt == 200) && (paramak != null)) {}
    try
    {
      paramak = a;
      JSONObject localJSONObject = paramak.getJSONObject("datas");
      l.a("ToolboxCacheManager", "getInmobiNativeAds sType :native, response ->" + paramak.toString());
      long l = System.currentTimeMillis();
      paramak = new IMDataModel(b.a, b.b, "native", localJSONObject, l);
      b.e.a(paramInt, paramak);
      com.duapps.ad.stats.b.b(t.a(b.f), b.b, paramInt, SystemClock.elapsedRealtime() - a);
      return;
    }
    catch (JSONException paramak)
    {
      l.a("ToolboxCacheManager", "getInmobiNativeAds sType :native,parse JsonException :", paramak);
      b.e.a(2000, com.duapps.ad.b.d.b());
      com.duapps.ad.stats.b.b(t.a(b.f), b.b, -101, SystemClock.elapsedRealtime() - a);
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    l.c("ToolboxCacheManager", "getInmobiNativeAds sType :native, parse failed: " + paramString);
    b.e.a(2001, com.duapps.ad.b.e.b());
    com.duapps.ad.stats.b.b(t.a(b.f), b.b, paramInt, SystemClock.elapsedRealtime() - a);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */