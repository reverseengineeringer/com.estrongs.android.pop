package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.bl;

public class UninstallMonitorActivity
  extends ESResourceActivity
{
  static bl a;
  boolean b = true;
  private c d = null;
  
  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, UninstallMonitorActivity.class);
    localIntent.addFlags(276824064);
    localIntent.putExtra("packageName", paramString);
    paramContext.startActivity(localIntent);
  }
  
  private void a(Intent paramIntent)
  {
    if (!ad.a(this).aU())
    {
      b = true;
      return;
    }
    if (paramIntent == null)
    {
      b = true;
      return;
    }
    paramIntent = paramIntent.getStringExtra("packageName");
    if (paramIntent == null)
    {
      b = true;
      return;
    }
    a(paramIntent);
  }
  
  private void a(String paramString)
  {
    new mx(this, paramString).start();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (com.estrongs.android.i.a.a("uninstall_stat", 1) == 1) {
      d = c.a(this);
    }
    try
    {
      d.d("act4");
      d.a("act4", "uninstall");
      if (!z.ap)
      {
        b = false;
        a(getIntent());
      }
      FileExplorerActivity.g(true);
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    com.estrongs.android.pop.app.ad.a.a().a("uninstall");
    if (b) {
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.UninstallMonitorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */