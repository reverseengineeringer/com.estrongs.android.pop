package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.ImageView;

class dn
  implements Runnable
{
  dn(dk paramdk) {}
  
  public void run()
  {
    if (dj.b(a.f) == null)
    {
      ((ImageView)a.e.findViewById(2131624051)).setImageResource(2130837913);
      return;
    }
    dj.a(a.f, a.e, dj.b(a.f));
    a.f.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */