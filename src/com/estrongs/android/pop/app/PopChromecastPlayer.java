package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.c.a;
import com.estrongs.android.pop.app.imageviewer.ViewImage21;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;

public class PopChromecastPlayer
  extends ESActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str;
    if (getIntent().getData() != null)
    {
      paramBundle = null;
      str = getIntent().getData().getPath();
      if (!bc.h(str)) {
        break label96;
      }
      paramBundle = PopVideoPlayer.class;
      if (paramBundle == null) {
        break label130;
      }
      paramBundle = new Intent(this, paramBundle);
      paramBundle.fillIn(getIntent(), 3);
      paramBundle.putExtra("Chromecast", true);
      paramBundle.putExtra("ChromecastUrl", am.a(str, a.a(), true, true));
    }
    for (;;)
    {
      try
      {
        startActivity(paramBundle);
        finish();
        return;
        label96:
        if (bc.g(str))
        {
          paramBundle = PopAudioPlayer.class;
          break;
        }
        if (!bc.c(str)) {
          break;
        }
        paramBundle = ViewImage21.class;
      }
      catch (ActivityNotFoundException paramBundle)
      {
        paramBundle.printStackTrace();
        continue;
      }
      label130:
      ag.a(this, 2131428093, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopChromecastPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */