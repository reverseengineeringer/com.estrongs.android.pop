package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.c.a;
import com.estrongs.android.pop.app.PopVideoPlayer;
import com.estrongs.android.pop.app.imageviewer.ViewImage21;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import java.io.File;
import java.util.List;

class hh
  implements MenuItem.OnMenuItemClickListener
{
  hh(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent;
    if ((cp.b(a).size() == 1) && (bc.h(((h)cp.b(a).get(0)).getAbsolutePath())))
    {
      paramMenuItem = ((h)cp.b(a).get(0)).getAbsolutePath();
      localIntent = new Intent(cp.a(a), PopVideoPlayer.class);
      if (am.bb(paramMenuItem))
      {
        localIntent.setData(Uri.parse(am.b(paramMenuItem, a.a())));
        localIntent.putExtra("Chromecast", true);
        localIntent.putExtra("ChromecastUrl", am.a(paramMenuItem, a.a(), true, true));
        cp.a(a).startActivity(localIntent);
      }
    }
    for (;;)
    {
      cp.a(a).s();
      return true;
      localIntent.setData(Uri.fromFile(new File(paramMenuItem)));
      break;
      if (bc.c(((h)cp.b(a).get(0)).getAbsolutePath()))
      {
        paramMenuItem = ((h)cp.b(a).get(0)).getAbsolutePath();
        localIntent = new Intent(cp.a(a), ViewImage21.class);
        localIntent.setData(Uri.parse(paramMenuItem));
        localIntent.putExtra("Chromecast", true);
        cp.a(a).startActivity(localIntent);
      }
      else
      {
        cp.a(cp.a(a), false, bd.a(cp.b(a)), true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */