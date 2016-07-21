package com.estrongs.android.pop.view;

import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.cr;

class d
  implements Runnable
{
  d(c paramc, cr paramcr, String paramString, String[] paramArrayOfString, int paramInt, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void run()
  {
    try
    {
      FileExplorerActivity.a(g.b).a(a, b, c, d);
      WindowManager.LayoutParams localLayoutParams;
      if (a != null)
      {
        if ((a.W()) && ((!e) || (!ap.bi(b))) && ((!e) || (!g.b.h(b)))) {
          g.b.ab();
        }
        if ((a.N()) && (f)) {
          g.b.B();
        }
        localLayoutParams = g.b.getWindow().getAttributes();
        if (!(a instanceof WebViewWrapper)) {
          break label234;
        }
      }
      label234:
      for (softInputMode = 16;; softInputMode = 48)
      {
        g.b.getWindow().setAttributes(localLayoutParams);
        g.b.a(b, d, a);
        FileExplorerActivity.b(g.b);
        FileExplorerActivity.a(g.b).s();
        if (!com.estrongs.android.pop.app.analysis.a.a(b)) {
          break;
        }
        g.b.av();
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */