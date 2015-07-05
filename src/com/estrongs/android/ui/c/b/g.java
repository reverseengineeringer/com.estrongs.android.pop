package com.estrongs.android.ui.c.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.a.d;
import com.estrongs.android.util.a;

class g
  implements View.OnClickListener
{
  g(f paramf, d paramd1, d paramd2, d paramd3, d paramd4, d paramd5, d paramd6, d paramd7) {}
  
  public void onClick(View paramView)
  {
    paramView = null;
    String str;
    if (a == b)
    {
      h.a.b(ad.a(h.a).z());
      str = "Home_Download";
      paramView = "Home_Download_UV";
    }
    for (;;)
    {
      a.a(str, str);
      a.b(paramView, paramView);
      return;
      h.a.d(a.a());
      if (a == c)
      {
        str = "Home_Pic";
        paramView = "Home_Pic_UV";
      }
      else if (a == d)
      {
        str = "Home_Music";
        paramView = "Home_Music_UV";
      }
      else if (a == e)
      {
        str = "Home_Video";
        paramView = "Home_Video_UV";
      }
      else if (a == f)
      {
        str = "Home_Doc";
        paramView = "Home_Doc_UV";
      }
      else if (a == g)
      {
        str = "Home_App";
        paramView = "Home_App_UV";
      }
      else
      {
        str = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */