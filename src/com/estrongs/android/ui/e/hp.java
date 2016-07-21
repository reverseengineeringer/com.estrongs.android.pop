package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.g.a;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.PopVideoPlayer;
import com.estrongs.android.pop.app.imageviewer.ViewImage21;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import java.io.File;
import java.util.List;

class hp
  implements MenuItem.OnMenuItemClickListener
{
  hp(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent;
    if ((cr.a(a).size() == 1) && (bg.h(((h)cr.a(a).get(0)).getAbsolutePath())))
    {
      paramMenuItem = ((h)cr.a(a).get(0)).getAbsolutePath();
      localIntent = new Intent(cr.b(a), PopVideoPlayer.class);
      if (ap.bm(paramMenuItem))
      {
        localIntent.setData(Uri.parse(ap.b(paramMenuItem, a.a())));
        localIntent.putExtra("Chromecast", true);
        localIntent.putExtra("ChromecastUrl", ap.a(paramMenuItem, a.a(), true, true));
        cr.b(a).startActivity(localIntent);
      }
    }
    for (;;)
    {
      cr.b(a).B();
      try
      {
        cr.b(a).at().a("function", "more_chromecast_click");
        return true;
      }
      catch (Exception paramMenuItem)
      {
        paramMenuItem.printStackTrace();
      }
      localIntent.setData(Uri.fromFile(new File(paramMenuItem)));
      break;
      if (bg.c(((h)cr.a(a).get(0)).getAbsolutePath()))
      {
        paramMenuItem = ((h)cr.a(a).get(0)).getAbsolutePath();
        localIntent = new Intent(cr.b(a), ViewImage21.class);
        localIntent.setData(Uri.parse(paramMenuItem));
        localIntent.putExtra("Chromecast", true);
        cr.b(a).startActivity(localIntent);
      }
      else
      {
        cr.a(cr.b(a), false, bk.a(cr.a(a)), true);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */