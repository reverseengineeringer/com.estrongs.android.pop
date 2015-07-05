package com.estrongs.android.pop.app.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.ESUsePromptActivity;
import com.estrongs.android.pop.app.b.c;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ak;

class e
  extends BroadcastReceiver
{
  e(PerformanceAccelerateService paramPerformanceAccelerateService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool;
    try
    {
      paramContext = paramIntent.getAction();
      if (!"android.net.wifi.STATE_CHANGE".equals(paramContext)) {
        break label237;
      }
      if ((z.w) && (!FexApplication.a().g())) {
        return;
      }
      bool = ak.b();
      paramIntent = paramIntent.getStringExtra("bssid");
      paramContext = paramIntent;
      if (bool)
      {
        paramContext = paramIntent;
        if (paramIntent == null) {
          paramContext = ak.c();
        }
      }
      if ((bool) && (paramContext != null) && (!paramContext.equals(PerformanceAccelerateService.f(a))))
      {
        PerformanceAccelerateService.a(a, paramContext);
        if (PerformanceAccelerateService.b(a) != null) {
          PerformanceAccelerateService.b(a).a(null, null);
        }
        paramContext = c.a().b(PerformanceAccelerateService.f(a));
        if ((paramContext != null) && (PerformanceAccelerateService.b(a) != null)) {
          PerformanceAccelerateService.b(a).a(null, paramContext);
        }
        PerformanceAccelerateService.e(a).a(5000L);
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if ((!bool) || (paramContext == null))
    {
      c.a().f();
      c.a().g();
      if (PerformanceAccelerateService.b(a) != null) {
        PerformanceAccelerateService.b(a).a(null, null);
      }
      PerformanceAccelerateService.a(a, null);
      PerformanceAccelerateService.a(a, false);
      return;
      label237:
      if (("android.intent.action.SCREEN_ON".equals(paramContext)) && (cc.a()))
      {
        if ((PerformanceAccelerateService.g(a)) && (c.a().b(PerformanceAccelerateService.a(a)) == null))
        {
          PerformanceAccelerateService.c(a).a(PerformanceAccelerateService.h(a));
          PerformanceAccelerateService.c(a).d();
          PerformanceAccelerateService.a(a, false);
        }
      }
      else if (("android.intent.action.SCREEN_OFF".equals(paramContext)) && (cc.a()))
      {
        long l = ad.a(FexApplication.a()).aR();
        if (((l != 0L) && (System.currentTimeMillis() - l > 2592000000L)) || (PerformanceAccelerateService.a(a, l)))
        {
          paramContext = new Intent(a, ESUsePromptActivity.class);
          paramContext.setFlags(335544320);
          a.startActivity(paramContext);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */