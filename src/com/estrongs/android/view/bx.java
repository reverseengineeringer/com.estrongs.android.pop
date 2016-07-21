package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import android.widget.ImageView;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.feedback.c;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.y;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class bx
  extends cr
{
  private boolean a = false;
  private List<h> b;
  private p c = new cf(this);
  
  public bx(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(com.estrongs.a.a parama)
  {
    if ((parama instanceof y))
    {
      a = true;
      parama = ((y)parama).d();
      if (b == null) {
        b = new CopyOnWriteArrayList();
      }
      parama = parama.iterator();
      while (parama.hasNext())
      {
        com.estrongs.fs.impl.local.f localf = new com.estrongs.fs.impl.local.f(new File((String)parama.next()));
        b.add(localf);
      }
    }
  }
  
  private void a(FileExplorerActivity paramFileExplorerActivity, List<h> paramList)
  {
    ag.a(paramFileExplorerActivity, paramList, new cd(this));
  }
  
  private void u()
  {
    W.postDelayed(new ce(this), 200L);
  }
  
  protected int a()
  {
    return 2130903211;
  }
  
  public void a(int paramInt)
  {
    super.a(6);
  }
  
  public void a_(List<h> paramList)
  {
    if (b != null) {
      paramList.addAll(b);
    }
    if (J != null) {
      a(paramList, J);
    }
    super.a_(paramList);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!a) {
        b = null;
      }
      a = false;
    }
    super.b(paramBoolean);
  }
  
  public void i_()
  {
    super.i_();
    c.a(ag);
  }
  
  public void j_()
  {
    super.j_();
  }
  
  public void l()
  {
    super.l();
  }
  
  protected void m_()
  {
    super.m_();
    o.setOnClickListener(new by(this));
  }
  
  protected void n_()
  {
    if (ap.bh(C))
    {
      f(2131231510);
      o.setImageResource(2130838192);
      o.setClickable(false);
    }
    for (;;)
    {
      super.n_();
      return;
      f(2131231421);
      o.setImageResource(2130837738);
      o.setClickable(true);
    }
  }
  
  public void s()
  {
    Object localObject = new bz(this, ad.a(ag).q());
    localObject = new ca(this, ag, b.b(), (i)localObject);
    ((com.estrongs.android.widget.f)localObject).a(ag.getText(2131230850));
    ((com.estrongs.android.widget.f)localObject).b(ag.getString(2131231270), new cb(this, (com.estrongs.android.widget.f)localObject));
    ((com.estrongs.android.widget.f)localObject).c(ag.getString(2131231265), new cc(this));
    ((com.estrongs.android.widget.f)localObject).c(true);
  }
  
  public p t()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */