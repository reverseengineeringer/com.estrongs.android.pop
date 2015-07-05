package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View;

public class a
{
  protected com.estrongs.fs.impl.adb.a a = null;
  ct b;
  private e c = null;
  private Activity d;
  
  public a(Activity paramActivity, com.estrongs.fs.impl.adb.a parama)
  {
    d = paramActivity;
    a = parama;
    c = new e(this, d);
    paramActivity = c.aq();
    b = new ct(paramActivity.getContext()).a(2131427577);
    b.a(paramActivity);
    b.f(2131428733, new b(this));
    b.e(2131427608, new c(this));
    b.d(2131427340, new d(this));
  }
  
  public void a()
  {
    b.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */