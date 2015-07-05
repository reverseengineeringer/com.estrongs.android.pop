package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

public class UsbMonitorActivity
  extends ESActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new Intent(this, FileExplorerActivity.class);
    paramBundle.setFlags(335544320);
    startActivity(paramBundle);
    finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.UsbMonitorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */