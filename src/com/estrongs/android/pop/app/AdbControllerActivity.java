package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.estrongs.android.c.h;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.ftp.ESFtpShortcut;

public class AdbControllerActivity
  extends ESActivity
{
  boolean a = false;
  private com.estrongs.android.util.a b = null;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent().getExtras();
    if (localObject != null)
    {
      paramBundle = ((Bundle)localObject).getString("adbRemoteIp");
      localObject = ((Bundle)localObject).getString("adbControlMode");
      if ((paramBundle != null) && (localObject != null))
      {
        h.c(paramBundle);
        com.estrongs.android.c.a.b();
      }
    }
    for (;;)
    {
      try
      {
        localIntent = new Intent(this, ESFtpShortcut.class);
        localIntent.putExtra("adbControl", "adbControl");
        if (!((String)localObject).equals("start")) {
          continue;
        }
        localIntent.putExtra("mode", 1);
        startActivity(localIntent);
      }
      catch (Exception paramBundle)
      {
        Intent localIntent;
        continue;
      }
      finish();
      return;
      if (((String)localObject).equals("stop"))
      {
        h.d(paramBundle);
        if ((com.estrongs.android.ftp.a.e() != null) && (ek)) {
          localIntent.putExtra("mode", 2);
        }
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if (b != null) {
      b.c();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (b != null) {
      b.b();
    }
    if (a) {
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.AdbControllerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */