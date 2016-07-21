package com.duapps.ad.stats;

import android.os.SystemClock;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.aj;
import com.duapps.ad.base.i;
import com.duapps.ad.base.l;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class r
  implements Runnable
{
  r(q paramq) {}
  
  public void run()
  {
    int i = 0;
    long l = SystemClock.elapsedRealtime();
    try
    {
      Object localObject = i.a(q.a(a), ag.b(q.a(a)));
      ArrayList localArrayList = (ArrayList)ag.a(q.a(a)).a();
      StringBuilder localStringBuilder = new StringBuilder();
      while (i < localArrayList.size())
      {
        localStringBuilder.append(localArrayList.get(i));
        localStringBuilder.append(",");
        i += 1;
      }
      ((List)localObject).add(new BasicNameValuePair("sid", localStringBuilder.toString().substring(0, localStringBuilder.length() - 1)));
      ((List)localObject).add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
      localObject = URLEncodedUtils.format((List)localObject, "UTF-8");
      localObject = new URL(q.a() + (String)localObject);
      l.c("test", "get src priority url: " + localObject);
      aj.a((URL)localObject, new s(this, l), com.duapps.ad.base.r.e(q.a(a)));
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      b.a(q.a(a), -102, SystemClock.elapsedRealtime() - l);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */