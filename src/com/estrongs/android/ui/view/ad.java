package com.estrongs.android.ui.view;

import android.os.Handler;
import com.estrongs.android.pop.app.a.ag;
import com.estrongs.android.pop.app.a.ai;

class ad
  extends ag
{
  ad(ac paramac) {}
  
  protected boolean a(ai paramai)
  {
    return (b != null) && (b.a(paramai));
  }
  
  protected boolean b(ai paramai)
  {
    if (a(paramai))
    {
      ac.a(b).post(new ae(this, paramai));
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