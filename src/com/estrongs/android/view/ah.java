package com.estrongs.android.view;

import android.app.Activity;
import android.widget.BaseAdapter;
import com.estrongs.android.d.f;
import com.estrongs.android.d.k;
import com.estrongs.android.d.m;

class ah
  extends k
{
  int d = 0;
  
  ah(ac paramac, String paramString)
  {
    super(paramString);
  }
  
  protected boolean a(m paramm)
  {
    return true;
  }
  
  public boolean b(m paramm)
  {
    if (a(paramm))
    {
      d += 1;
      e.ad.runOnUiThread(new ai(this, paramm));
    }
    if (a) {
      f.a(f.f(c), e, false);
    }
    if (d == e.i.getCount())
    {
      c();
      e.f = null;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */