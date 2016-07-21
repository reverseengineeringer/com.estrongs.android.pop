package com.estrongs.android.ui.b;

import android.app.Activity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.estrongs.a.l;
import com.estrongs.android.ui.feedback.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.view.ck;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class u
  extends cr
{
  private List<h> a = new LinkedList();
  private l b = l.a();
  private List<f> c = new LinkedList();
  private ab d = new ab(this);
  
  public u(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void s()
  {
    Iterator localIterator = b.b().iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)localIterator.next();
      if ((locala instanceof ar)) {
        if (locala.getTaskStatus() == 3) {
          locala.resume();
        } else if ((locala.getTaskStatus() == 1) || (locala.getTaskStatus() == 5)) {
          locala.execute();
        }
      }
    }
  }
  
  private void t()
  {
    Iterator localIterator = b.b().iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)localIterator.next();
      if ((locala.getTaskStatus() == 2) && ((locala instanceof ar))) {
        locala.requsestPause();
      }
    }
  }
  
  private int u()
  {
    Object localObject = b.b();
    a.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)((Iterator)localObject).next();
      a.add(new k(locala));
    }
    a_(a);
    return a.size();
  }
  
  public f a(com.estrongs.a.a parama)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      if (localf.a() == parama) {
        return localf;
      }
    }
    return null;
  }
  
  public void a(int paramInt) {}
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    C = paramString;
    D = new x(paramString);
    b(true);
  }
  
  public void b(boolean paramBoolean)
  {
    x = true;
    if (u() == 0) {
      f(2131231843);
    }
  }
  
  public String c()
  {
    return C;
  }
  
  public h f()
  {
    return j();
  }
  
  protected void i()
  {
    g.setSpanCount(1);
    i = new v(this);
    h.setAdapter(i);
    i.registerAdapterDataObserver(new aa(this));
  }
  
  public void i_()
  {
    t();
    super.i_();
    c.a(ag);
  }
  
  public h j()
  {
    return null;
  }
  
  public void j_()
  {
    t();
  }
  
  public void l()
  {
    s();
    super.l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */