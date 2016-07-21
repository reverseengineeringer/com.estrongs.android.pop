package com.duapps.ad.base;

import android.os.SystemClock;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class aa
  implements Runnable
{
  aa(t paramt, String paramString1, int paramInt, String paramString2, String paramString3, am paramam) {}
  
  public void run()
  {
    long l = SystemClock.elapsedRealtime();
    try
    {
      List localList = i.a(t.a(f), a);
      if (ap.a(t.a(f), "com.android.vending")) {}
      for (Object localObject = "1";; localObject = "0")
      {
        localList.add(new BasicNameValuePair("play", (String)localObject));
        localList.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
        localList.add(new BasicNameValuePair("ps", "20"));
        localList.add(new BasicNameValuePair("pn", String.valueOf(1)));
        localList.add(new BasicNameValuePair("sid", String.valueOf(b)));
        localList.add(new BasicNameValuePair("sType", "native"));
        localList.add(new BasicNameValuePair("or", String.valueOf(ap.c(t.a(f)))));
        localList.add(new BasicNameValuePair("siteId", c));
        localList.add(new BasicNameValuePair("aSize", d));
        String str = System.getProperty("http.agent");
        localObject = str;
        if (TextUtils.isEmpty(str)) {
          localObject = "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18";
        }
        localList.add(new BasicNameValuePair("ua", (String)localObject));
        localObject = URLEncodedUtils.format(localList, "UTF-8");
        localObject = new URL(t.c() + (String)localObject);
        l.c("ToolboxCacheManager", "getInmobiNativeAds sType :native, Url ->" + ((URL)localObject).toString());
        aj.a((URL)localObject, new ab(this, l), r.f(t.a(f), b));
        r.b(t.c() + b, t.a(f));
        return;
      }
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      l.a("ToolboxCacheManager", "getInmobiNativeAds sType :native, parse exception.", localMalformedURLException);
      e.a(3001, com.duapps.ad.b.g.b());
      com.duapps.ad.stats.b.b(t.a(f), b, -102, SystemClock.elapsedRealtime() - l);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */