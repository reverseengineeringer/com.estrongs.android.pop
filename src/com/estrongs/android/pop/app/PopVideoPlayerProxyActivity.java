package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.z;

public class PopVideoPlayerProxyActivity
  extends ESActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!z.s)
    {
      paramBundle = getIntent();
      paramBundle.setClass(this, PopVideoPlayer.class);
      paramBundle.setFlags(0);
    }
    try
    {
      startActivity(paramBundle);
      finish();
      return;
    }
    catch (ActivityNotFoundException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopVideoPlayerProxyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */