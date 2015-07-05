package com.estrongs.android.pop;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;

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
      aw.ae();
      am.e();
      am.h();
      try
      {
        if ((bd.l()) && ((paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL"))))
        {
          paramContext = paramIntent.getData().getPath();
          ad.a(FexApplication.a()).T(paramContext);
        }
        return;
      }
      catch (Exception paramContext) {}
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