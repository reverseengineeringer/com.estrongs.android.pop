package com.estrongs.android.pop.app.c;

import android.content.res.Resources;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.ag;
import com.estrongs.android.pop.app.ai;
import com.estrongs.android.ui.e.hz;
import com.estrongs.android.ui.e.ju;
import com.estrongs.android.ui.e.km;

public class a
{
  private ju a;
  private hz b;
  private com.estrongs.android.view.a.a c;
  private com.estrongs.android.view.a.a d;
  private com.estrongs.android.view.a.a e;
  private PopAudioPlayer f;
  private ag g = ag.g();
  private ai h = null;
  
  public a(PopAudioPlayer paramPopAudioPlayer)
  {
    f = paramPopAudioPlayer;
    d();
  }
  
  private void d()
  {
    a = new ju(f, true, true);
    b = new hz(f, true);
    a.a(b);
    a.a(b.c());
    c = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838531), f.getString(2131231154)).a(new b(this));
    d = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838578), f.getString(2131231151)).a(new c(this));
    e = new com.estrongs.android.view.a.a(f.getResources().getDrawable(2130838530), f.getString(2131231148)).a(new d(this));
  }
  
  public void a(ai paramai)
  {
    h = paramai;
  }
  
  public boolean a()
  {
    return (a != null) && (a.b());
  }
  
  public void b()
  {
    km localkm = b.b();
    localkm.j();
    localkm.a(e);
    if (f.d()) {
      localkm.a(c);
    }
    for (;;)
    {
      if (a != null) {
        a.c();
      }
      return;
      localkm.a(d);
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
 * Qualified Name:     com.estrongs.android.pop.app.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */