package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import org.json.JSONObject;

class z
  implements View.OnClickListener
{
  z(v paramv, f paramf, int paramInt) {}
  
  public void onClick(View paramView)
  {
    int i;
    if (!c.a.N())
    {
      paramView = a.a();
      i = paramView.getTaskStatus();
      if ((paramView instanceof ad))
      {
        if (i != 1) {
          break label126;
        }
        a.a().execute();
      }
    }
    for (;;)
    {
      if (i == 4) {}
      try
      {
        String str = paramView.summary().optString("target");
        if ((ap.bl(str)) && (!d.a().b(str)))
        {
          ak.a(u.k(c.a), u.l(c.a).getString(2131231878, new Object[] { paramView.summary().optString("title") }), 0);
          return;
          label126:
          if (i == 3)
          {
            a.a().resume();
          }
          else if (i == 5)
          {
            u.j(c.a).a((h)c.a.e(b));
            a.a().addPostListener(u.j(c.a));
            a.a(a.a());
            a.a().execute();
          }
          else if (i == 2)
          {
            a.a().requsestPause();
          }
        }
        else
        {
          AppRunner.a(u.m(c.a), str, str);
          return;
        }
      }
      catch (FileSystemException paramView)
      {
        l.d("TaskGridViewWarpper", "Ignore error when open file in download manager");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */