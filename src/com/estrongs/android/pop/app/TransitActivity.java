package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

public class TransitActivity
  extends ESResourceActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      if (!paramBundle.getAction().equals("com.estrongs.android.SHOW_DISK_USAGE")) {
        break label61;
      }
      paramBundle = new Intent("com.estrongs.android.SHOW_DISK_USAGE");
      paramBundle.addFlags(603979776);
      paramBundle.setClass(this, FileExplorerActivity.class);
      startActivity(paramBundle);
    }
    for (;;)
    {
      finish();
      return;
      label61:
      if (paramBundle.getAction().equals("com.estrongs.android.SHOW_APP_MGR"))
      {
        paramBundle = new Intent();
        paramBundle.setClass(this, FileExplorerActivity.class);
        paramBundle.putExtra("action", "show_app");
        paramBundle.addFlags(603979776);
        startActivity(paramBundle);
      }
      else if (paramBundle.getAction().equals("com.estrongs.android.SHOW_SDCARD"))
      {
        paramBundle = new Intent();
        paramBundle.setClass(this, FileExplorerActivity.class);
        paramBundle.setData(Uri.parse(b.b()));
        paramBundle.addFlags(603979776);
        startActivity(paramBundle);
      }
      else if (paramBundle.getAction().equals("com.estrongs.android.SHOW_MUSIC_PLAYER"))
      {
        paramBundle = new Intent();
        paramBundle.setClass(this, FileExplorerActivity.class);
        paramBundle.putExtra("action", "open_music_player");
        paramBundle.setData(Uri.parse("#music_player#"));
        paramBundle.addFlags(603979776);
        startActivity(paramBundle);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.TransitActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */