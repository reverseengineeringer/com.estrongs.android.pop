package com.estrongs.android.ui.view;

import android.os.Handler;
import com.estrongs.android.pop.app.c.e;
import com.estrongs.android.pop.app.c.g;

class ad
  extends e
{
  ad(ac paramac) {}
  
  protected boolean a(g paramg)
  {
    return (b != null) && (b.a(paramg));
  }
  
  protected boolean b(g paramg)
  {
    if (a(paramg))
    {
      ac.a(b).post(new ae(this, paramg));
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */