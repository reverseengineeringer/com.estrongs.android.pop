package com.estrongs.android.pop.app.imageviewer;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.utils.de;
import com.estrongs.android.pop.utils.dh;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class aw
  implements View.OnClickListener
{
  aw(ViewImage21 paramViewImage21) {}
  
  public void onClick(View paramView)
  {
    paramView = a.c();
    if (paramView != null) {
      try
      {
        if (ViewImage21.k(a) != null)
        {
          ViewImage21.k(a).a("Search_Wan");
          ViewImage21.k(a).c("Search_Wan_UV");
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          try
          {
            paramView = de.a(a, "image", ap.bS(paramView.i()));
            if (paramView == null) {
              return;
            }
            if (de.a(b))
            {
              a.finish();
              return;
            }
            Intent localIntent = new Intent(a, FileExplorerActivity.class);
            localIntent.setFlags(603979776);
            localIntent.setData(Uri.parse(a));
            a.startActivity(localIntent);
            return;
          }
          catch (Exception paramView) {}
          localException = localException;
        }
      }
    }
    return;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */