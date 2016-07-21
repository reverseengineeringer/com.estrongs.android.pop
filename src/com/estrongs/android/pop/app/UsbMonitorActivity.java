package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

public class UsbMonitorActivity
  extends ESActivity
{
  private c a = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = c.a(this);
    try
    {
      if (a != null) {
        a.d("act1");
      }
      paramBundle = new Intent(this, FileExplorerActivity.class);
      paramBundle.setFlags(335544320);
      paramBundle.setAction("com.estrongs.android.usb.plug.in");
      startActivity(paramBundle);
      finish();
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.UsbMonitorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */