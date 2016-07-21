package com.estrongs.android.pop.app.ad;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

final class k
  implements Runnable
{
  public void run()
  {
    try
    {
      Object localObject2 = FexApplication.a().getPackageManager();
      long l = ad.a(FexApplication.a()).bd();
      if (Math.abs(System.currentTimeMillis() - l) < 3600000L)
      {
        Object localObject1 = com.estrongs.android.pop.utils.w.b(localObject2, FexApplication.a().getApplicationInfo())[0];
        localObject2 = com.estrongs.android.pop.utils.w.b(localObject2, com.estrongs.android.pop.utils.w.b(localObject2, "com.dianxinos.optimizer.duplay"))[0];
        StringBuilder localStringBuilder = new StringBuilder("http://www.estrongs.com/console/service/pkg/stat/?req=s&t=3&p=com.dianxinos.optimizer.duplay");
        localStringBuilder.append("&ev=").append((String)localObject1);
        localStringBuilder.append("&av=").append((String)localObject2);
        localStringBuilder.append("&m=").append("DuSpeed");
        localObject1 = new HttpGet(localStringBuilder.toString());
        new DefaultHttpClient().execute((HttpUriRequest)localObject1);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */