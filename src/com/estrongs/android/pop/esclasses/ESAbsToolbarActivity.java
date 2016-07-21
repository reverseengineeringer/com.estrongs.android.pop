package com.estrongs.android.pop.esclasses;

import android.os.Bundle;
import android.view.View;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.a;
import com.estrongs.android.view.cr;

public abstract class ESAbsToolbarActivity
  extends ESActivity
{
  protected boolean a = true;
  protected boolean b = false;
  public boolean c;
  a d = new e(this);
  
  protected abstract View a();
  
  protected void a(cr paramcr)
  {
    if (ac.a() > 8) {
      paramcr.a(d);
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
  
  public boolean d()
  {
    return a;
  }
  
  protected abstract boolean e();
  
  protected boolean f()
  {
    return false;
  }
  
  protected abstract void g();
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  protected void onPause()
  {
    super.onPause();
    ad localad = ad.a(this);
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      localad.d(bool);
      return;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!ad.a(this).u()) {}
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