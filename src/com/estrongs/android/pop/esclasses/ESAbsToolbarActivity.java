package com.estrongs.android.pop.esclasses;

import android.view.View;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.view.aw;

public abstract class ESAbsToolbarActivity
  extends ESActivity
{
  protected boolean a = true;
  protected boolean b = false;
  public boolean c;
  com.estrongs.android.pop.app.a d = new a(this);
  
  protected abstract View a();
  
  protected void a(aw paramaw)
  {
    if (ac.a() > 8) {
      paramaw.a(d);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  protected abstract View b();
  
  public void b(boolean paramBoolean)
  {
    a = paramBoolean;
    if (paramBoolean)
    {
      if (a() != null) {
        a().setVisibility(0);
      }
      if (b() != null) {
        b().setVisibility(0);
      }
    }
    for (;;)
    {
      c(a);
      return;
      if (a() != null) {
        a().setVisibility(8);
      }
      if (b() != null) {
        b().setVisibility(8);
      }
    }
  }
  
  protected abstract void c(boolean paramBoolean);
  
  public boolean c()
  {
    return b;
  }
  
  protected boolean d()
  {
    return a;
  }
  
  protected abstract boolean e();
  
  protected boolean f()
  {
    return false;
  }
  
  protected abstract void g();
  
  protected void onPause()
  {
    super.onPause();
    ad localad = ad.a(this);
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      localad.e(bool);
      return;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!ad.a(this).t()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */