package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface.OnDismissListener;
import android.view.View;
import com.estrongs.fs.h;

public class j
{
  protected h a = null;
  cv b;
  private n c = null;
  private Activity d;
  private String e;
  
  public j(Activity paramActivity, h paramh)
  {
    d = paramActivity;
    a = paramh;
    c = new n(this, d);
    paramActivity = c.aE();
    b = new cv(paramActivity.getContext()).a(2131232219);
    b.a(paramActivity);
    b.f(2131231096, new k(this));
    b.e(2131232247, new l(this));
    b.d(2131231265, new m(this));
  }
  
  public j a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    b.a(paramOnDismissListener);
    return this;
  }
  
  public void a()
  {
    b.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */