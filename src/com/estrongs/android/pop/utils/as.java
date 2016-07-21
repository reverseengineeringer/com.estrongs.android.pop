package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.view.er;

class as
  implements o
{
  as(ap paramap, String paramString) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    if ((paramBoolean) && (com.estrongs.android.util.ap.bl(a)) && ((b.b instanceof FileExplorerActivity)))
    {
      parama = ((FileExplorerActivity)b.b).O();
      if (((parama instanceof e)) || ((parama instanceof er))) {
        b.b.runOnUiThread(new at(this, parama));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */