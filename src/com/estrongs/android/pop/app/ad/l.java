package com.estrongs.android.pop.app.ad;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

final class l
  implements Runnable
{
  l(DuSpeedBoosterController.LocationType paramLocationType) {}
  
  public void run()
  {
    try
    {
      ad.a(FexApplication.a()).j(System.currentTimeMillis());
      Object localObject = com.estrongs.android.pop.utils.w.b(FexApplication.a().getPackageManager(), FexApplication.a().getApplicationInfo())[0];
      StringBuilder localStringBuilder = new StringBuilder("http://www.estrongs.com/console/service/pkg/stat/?req=s&t=1&p=com.dianxinos.optimizer.duplay");
      localStringBuilder.append("&ev=").append((String)localObject);
      localStringBuilder.append("&m=").append("DuSpeed");
      localStringBuilder.append("&l=").append(a);
      localObject = new HttpGet(localStringBuilder.toString());
      new DefaultHttpClient().execute((HttpUriRequest)localObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */