package com.estrongs.android.pop.app.a;

import android.content.res.Resources;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.ae;
import com.estrongs.android.ui.e.ic;
import com.estrongs.android.ui.e.iw;
import com.estrongs.android.ui.e.jk;

public class a
{
  private iw a;
  private ic b;
  private com.estrongs.android.view.a.a c;
  private com.estrongs.android.view.a.a d;
  private com.estrongs.android.view.a.a e;
  private PopAudioPlayer f;
  private aa g = aa.g();
  private ae h = null;
  
  public a(PopAudioPlayer paramPopAudioPlayer)
  {
    f = paramPopAudioPlayer;
    d();
  }
  
  private void d()
  {
    a = new iw(f, true, true);
    b = new ic(f, true);
    a.a(b);
    a.a(b.c());
    c = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838158), f.getString(2131428525)).a(new b(this));
    d = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838180), f.getString(2131428524)).a(new c(this));
    e = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838157), f.getString(2131428523)).a(new d(this));
  }
  
  public void a(ae paramae)
  {
    h = paramae;
  }
  
  public boolean a()
  {
    return (a != null) && (a.b());
  }
  
  public void b()
  {
    jk localjk = b.b();
    localjk.j();
    localjk.a(e);
    if (f.a()) {
      localjk.a(c);
    }
    for (;;)
    {
      if (a != null) {
        a.c();
      }
      return;
      localjk.a(d);
    }
  }
  
  public void c()
  {
    if ((a != null) && (a.b())) {
      a.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */