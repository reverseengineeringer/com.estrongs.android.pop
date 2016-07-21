package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.estrongs.android.g.f;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.ftp.ESFtpShortcut;
import com.estrongs.android.util.bk;

public class AdbControllerActivity
  extends ESResourceActivity
{
  boolean a = false;
  private c b = null;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent().getExtras();
    if ((localObject != null) && (bk.p()))
    {
      paramBundle = ((Bundle)localObject).getString("adbRemoteIp");
      localObject = ((Bundle)localObject).getString("adbControlMode");
      if ((paramBundle != null) && (localObject != null))
      {
        f.c(paramBundle);
        com.estrongs.android.g.a.b();
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
        f.d(paramBundle);
        if ((com.estrongs.android.ftp.a.e() != null) && (ek)) {
          localIntent.putExtra("mode", 2);
        }
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