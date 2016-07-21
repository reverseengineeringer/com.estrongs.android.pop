package com.estrongs.android.view.music;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.gq;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;

public class a
  extends cr
  implements m
{
  private MusicPlayerView a;
  private f b;
  private Handler c = new Handler();
  private l d = new b(this);
  private Runnable e = new c(this);
  
  public a(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void d(int paramInt)
  {
    c.removeCallbacks(e);
    c.postDelayed(e, paramInt);
  }
  
  private void v()
  {
    d(500);
  }
  
  private void w()
  {
    c.removeCallbacks(e);
  }
  
  private void x()
  {
    String str1 = null;
    Object localObject1 = a;
    if ((b.j().e()) && (!b.j().f())) {}
    for (boolean bool = true;; bool = false)
    {
      ((MusicPlayerView)localObject1).a(bool);
      if ((b != null) && (b.j() != null)) {
        break;
      }
      a.a();
      return;
    }
    Object localObject2 = b.j().r();
    String str2 = b.j().s();
    localObject1 = "";
    if (localObject2 != null)
    {
      localObject1 = b;
      if (((i)localObject2).c()) {
        str1 = b.j().t();
      }
    }
    for (;;)
    {
      localObject2 = str2;
      if (TextUtils.isEmpty(str2)) {
        localObject2 = ap.d((String)localObject1);
      }
      str2 = str1;
      if (TextUtils.isEmpty(str1)) {
        str2 = "";
      }
      a.setName((String)localObject2);
      a.setAuthor(str2);
      a.setMusicPath((String)localObject1);
      return;
      new Thread(new d(this, (i)localObject2)).start();
      continue;
      a.a();
    }
  }
  
  protected int a()
  {
    return 2130903344;
  }
  
  protected void i()
  {
    super.i();
    a = ((MusicPlayerView)b(2131625221));
    a.setOnPlayerViewListener(this);
    b = new f();
    b.a(aF());
  }
  
  public void i_()
  {
    super.i_();
    if (b != null) {
      b.d();
    }
    com.estrongs.android.ui.feedback.c.a(ag);
  }
  
  public void j_()
  {
    super.j_();
    if (b != null) {
      b.b();
    }
    w();
  }
  
  public void l()
  {
    super.l();
    if (b != null)
    {
      b.a(d);
      b.a();
      v();
    }
  }
  
  public void s()
  {
    MusicPlayerView localMusicPlayerView;
    if (b != null)
    {
      b.g();
      localMusicPlayerView = a;
      if ((!b.j().e()) || (b.j().f())) {
        break label54;
      }
    }
    label54:
    for (boolean bool = true;; bool = false)
    {
      localMusicPlayerView.a(bool);
      return;
    }
  }
  
  public void t()
  {
    if (b != null) {
      b.e();
    }
  }
  
  public void u()
  {
    if (b != null) {
      b.h();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */