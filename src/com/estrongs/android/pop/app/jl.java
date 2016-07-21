package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.de;
import com.estrongs.android.pop.utils.dh;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class jl
  implements View.OnClickListener
{
  jl(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onClick(View paramView)
  {
    paramView = ap.d(PopVideoPlayer.x(a));
    if (paramView != null) {
      try
      {
        if (PopVideoPlayer.y(a) != null)
        {
          PopVideoPlayer.y(a).a("Search_Wan");
          PopVideoPlayer.y(a).c("Search_Wan_UV");
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          try
          {
            paramView = de.a(a, "video", ap.bS(paramView));
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
 * Qualified Name:     com.estrongs.android.pop.app.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */