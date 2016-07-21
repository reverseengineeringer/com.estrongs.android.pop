package com.estrongs.android.pop;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.ad.a;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;

public class EnableOEMConfig
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ((paramContext != null) && ((paramContext.equals("android.intent.action.MEDIA_MOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")))) {}
    try
    {
      b.a();
      cr.at();
      ap.e();
      ap.h();
      try
      {
        if ((bk.l()) && ((paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL"))))
        {
          paramContext = paramIntent.getData().getPath();
          ad.a(FexApplication.a()).S(paramContext);
        }
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
      a.a().a("oemconfig");
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.EnableOEMConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */