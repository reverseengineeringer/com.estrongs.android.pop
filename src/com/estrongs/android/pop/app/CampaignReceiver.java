package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.a;
import java.net.URLDecoder;

public class CampaignReceiver
  extends BroadcastReceiver
{
  private static final String a = CampaignReceiver.class.getSimpleName();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("referrer");
    if (paramContext != null) {
      try
      {
        paramContext = URLDecoder.decode(paramContext);
        paramContext = paramContext.split("&");
        int j = paramContext.length;
        int i = 0;
        while (i < j)
        {
          paramIntent = paramContext[i].split("=");
          if ((paramIntent != null) && (paramIntent.length == 2) && (paramIntent[0].equals("utm_source"))) {
            a.a(FexApplication.a(), false, "Shadow").d("campaign_" + paramIntent[1], "campaign_" + paramIntent[1]);
          }
          i += 1;
        }
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.CampaignReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */