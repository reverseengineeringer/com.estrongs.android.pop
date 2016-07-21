package com.duapps.ad.base;

import android.os.SystemClock;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class u
  implements Runnable
{
  u(t paramt, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, String paramString4, String paramString5, am paramam) {}
  
  public void run()
  {
    long l = SystemClock.elapsedRealtime();
    try
    {
      List localList = i.a(t.a(i), a);
      if (ap.a(t.a(i), "com.android.vending")) {}
      for (Object localObject = "1";; localObject = "0")
      {
        localList.add(new BasicNameValuePair("play", (String)localObject));
        localList.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
        localList.add(new BasicNameValuePair("ps", b));
        localList.add(new BasicNameValuePair("pn", String.valueOf(c)));
        localList.add(new BasicNameValuePair("sid", String.valueOf(d)));
        localList.add(new BasicNameValuePair("sType", e));
        localObject = URLEncodedUtils.format(localList, "UTF-8");
        localObject = new URL(f + (String)localObject);
        l.c("ToolboxCacheManager", "getWall sType :" + e + ", Url ->" + ((URL)localObject).toString());
        aj.a((URL)localObject, new v(this, l), r.f(t.a(i), d));
        return;
      }
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      l.a("ToolboxCacheManager", "getWall sType :" + e + ", parse exception.", localMalformedURLException);
      h.a(3001, com.duapps.ad.b.g.b());
      com.duapps.ad.stats.b.a(t.a(i), d, -102, SystemClock.elapsedRealtime() - l);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */