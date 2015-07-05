package com.estrongs.android.view;

import android.os.Handler;
import android.widget.ImageView;
import com.estrongs.android.d.f;
import com.estrongs.android.d.k;
import com.estrongs.android.d.m;

class bj
  extends k
{
  bj(aw paramaw) {}
  
  protected boolean a(m paramm)
  {
    return (c != null) && (d.a(paramm)) && (b >= d.Q) && (b <= d.R);
  }
  
  public boolean b(m paramm)
  {
    boolean bool = false;
    if (a(paramm))
    {
      if (f.getDrawable() != e) {
        d.T.post(new bk(this, paramm));
      }
      bool = true;
    }
    while (!a) {
      return bool;
    }
    f.a(f.f(d), e, false);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */