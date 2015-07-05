package com.estrongs.android.ui.b;

import android.app.Activity;
import com.estrongs.a.l;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cb;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.n;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class u
  extends aw
{
  private List<h> a = new LinkedList();
  private l b = l.a();
  private List<f> c = new LinkedList();
  private x d = new x(this);
  
  public u(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void p()
  {
    Iterator localIterator = b.b().iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)localIterator.next();
      if ((locala instanceof ap)) {
        if (locala.getTaskStatus() == 3) {
          locala.resume();
        } else if ((locala.getTaskStatus() == 1) || (locala.getTaskStatus() == 5)) {
          locala.execute();
        }
      }
    }
  }
  
  private void q()
  {
    Iterator localIterator = b.b().iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)localIterator.next();
      if ((locala.getTaskStatus() == 2) && ((locala instanceof ap))) {
        locala.requsestPause();
      }
    }
  }
  
  private int r()
  {
    Object localObject = b.b();
    a.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      com.estrongs.a.a locala = (com.estrongs.a.a)((Iterator)localObject).next();
      a.add(new k(locala));
    }
    b(a);
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
    v = paramString;
    w = new n(paramString);
    b(true);
  }
  
  public void a_()
  {
    q();
    super.a_();
  }
  
  public void b(boolean paramBoolean)
  {
    if (r() == 0) {
      f(2131428233);
    }
  }
  
  public void b_()
  {
    q();
  }
  
  public String c()
  {
    return v;
  }
  
  public h f()
  {
    return j();
  }
  
  protected void i()
  {
    g.setNumColumns(1);
    g.setSelector(2130837560);
    g.setCacheColorHint(0);
    g.setOnItemClickListener(new v(this));
    f = new w(this);
    g.setAdapter(f);
  }
  
  public h j()
  {
    return null;
  }
  
  public void l()
  {
    p();
    super.l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */