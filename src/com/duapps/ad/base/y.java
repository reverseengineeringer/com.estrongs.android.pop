package com.duapps.ad.base;

import android.os.SystemClock;
import android.util.DisplayMetrics;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class y
  implements Runnable
{
  y(t paramt, String paramString1, DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2, String paramString2, int paramInt3, String paramString3, String paramString4, am paramam) {}
  
  public void run()
  {
    long l = SystemClock.elapsedRealtime();
    try
    {
      List localList = i.a(t.a(j), a);
      if (ap.a(t.a(j), "com.android.vending")) {}
      for (Object localObject = "1";; localObject = "0")
      {
        localList.add(new BasicNameValuePair("play", (String)localObject));
        localList.add(new BasicNameValuePair("res", String.valueOf(b.heightPixels) + "*" + String.valueOf(b.widthPixels)));
        localList.add(new BasicNameValuePair("ps", "20"));
        localList.add(new BasicNameValuePair("pn", String.valueOf(c)));
        localList.add(new BasicNameValuePair("sid", String.valueOf(d)));
        localList.add(new BasicNameValuePair("sType", e));
        localList.add(new BasicNameValuePair("aSize", String.valueOf(f)));
        localList.add(new BasicNameValuePair("ua", m.b));
        localObject = URLEncodedUtils.format(localList, "UTF-8");
        localObject = new URL(g + (String)localObject);
        l.c("ToolboxCacheManager", "getOnlineWall sType :" + e + ", Url ->" + ((URL)localObject).toString());
        aj.a((URL)localObject, new z(this, l), r.f(t.a(j), d));
        return;
      }
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      l.a("ToolboxCacheManager", "getWall sType :" + e + ", parse exception.", localMalformedURLException);
      i.a(3001, com.duapps.ad.b.g.b());
      com.duapps.ad.stats.b.c(t.a(j), d, -102, SystemClock.elapsedRealtime() - l);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */