package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.notification.i;
import java.util.Random;

public class StartServiceReceiver
  extends BroadcastReceiver
{
  private static final Random a = new Random();
  
  private void a(Context paramContext, Intent paramIntent)
  {
    if (!ad.a(paramContext).O()) {
      return;
    }
    paramContext = paramIntent.getStringExtra("path");
    paramIntent = i.a(FexApplication.a());
    if (paramContext != null)
    {
      paramIntent.a(paramContext);
      return;
    }
    paramIntent.b();
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new Thread(new lm(this)).start();
    if ((z.w) && (!FexApplication.a().g())) {
      return;
    }
    a(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.StartServiceReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */