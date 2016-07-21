package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View;
import com.estrongs.fs.impl.b.d;

public class o
{
  protected d a = null;
  private u b = null;
  private Activity c;
  private ci d;
  
  public o(Activity paramActivity, d paramd)
  {
    c = paramActivity;
    a = paramd;
    b = new u(this, paramActivity);
  }
  
  public void a()
  {
    View localView = b.aE();
    cv localcv = new cv(localView.getContext()).a(2131232219);
    localcv.a(localView);
    if (a.j())
    {
      localcv.f(2131231941, new p(this));
      if (!a.f()) {
        break label123;
      }
      localcv.e(2131230899, new r(this));
    }
    for (;;)
    {
      localcv.d(2131231265, new t(this));
      d = localcv.c();
      return;
      localcv.f(2131230868, new q(this));
      break;
      label123:
      localcv.e(2131230862, new s(this));
    }
  }
  
  public void b()
  {
    if (d != null) {
      d.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */