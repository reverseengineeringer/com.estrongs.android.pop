package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.bj;
import com.estrongs.android.util.a;

public class UninstallMonitorActivity
  extends ESActivity
{
  static bj a;
  boolean b = false;
  private a c = null;
  
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
    new mg(this, paramString).start();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = a.a(this, false, "Shadow");
    if (!z.ap) {
      a(getIntent());
    }
    FileExplorerActivity.h(true);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (c != null) {
      c.c();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (c != null) {
      c.b();
    }
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