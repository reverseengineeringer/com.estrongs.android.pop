package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.l;
import java.net.URLDecoder;

public class CampaignReceiver
  extends BroadcastReceiver
{
  private static final String a = CampaignReceiver.class.getSimpleName();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    l.c(a, "onReceive intent = " + paramIntent);
    com.estrongs.android.c.a.a.b(paramContext);
    paramIntent = paramIntent.getStringExtra("referrer");
    if (paramIntent != null) {
      try
      {
        paramIntent = URLDecoder.decode(paramIntent);
        String[] arrayOfString1 = paramIntent.split("&");
        int j = arrayOfString1.length;
        int i = 0;
        while (i < j)
        {
          String[] arrayOfString2 = arrayOfString1[i].split("=");
          if ((arrayOfString2 != null) && (arrayOfString2.length == 2) && (arrayOfString2[0].equals("utm_source"))) {
            c.a(FexApplication.a()).b("campaign_" + arrayOfString2[1]);
          }
          i += 1;
          continue;
          return;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    do
    {
      l.c(a, "referrer = " + paramIntent);
    } while (TextUtils.isEmpty(paramIntent));
    com.estrongs.android.c.c.a.a(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.CampaignReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */