package com.estrongs.android.pop.app.analysis.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.a.k;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.analysis.AnalysisResultDetailActivity;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.pop.app.analysis.a.m;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;

public class v
  extends a
  implements m
{
  protected com.estrongs.android.view.a.a A;
  protected com.estrongs.android.view.a.a B;
  private k r = new y(this);
  protected i w;
  protected List<g> x;
  protected com.estrongs.android.a.b.a y;
  protected com.estrongs.android.view.a.a z;
  
  private Drawable c(int paramInt)
  {
    return at.a(getContext()).g(paramInt);
  }
  
  private String d(int paramInt)
  {
    return FexApplication.a().getString(paramInt);
  }
  
  protected void a(int paramInt1, int paramInt2) {}
  
  public void a(long paramLong)
  {
    b(paramLong);
  }
  
  protected void a(Context paramContext)
  {
    y();
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    a.addOnScrollListener(new w(this));
  }
  
  public void a(CopyOnWriteArrayList<g> paramCopyOnWriteArrayList)
  {
    paramCopyOnWriteArrayList = paramCopyOnWriteArrayList.iterator();
    while (paramCopyOnWriteArrayList.hasNext())
    {
      g localg = (g)paramCopyOnWriteArrayList.next();
      int i = w.c(localg);
      if (i != -1) {
        w.notifyItemRemoved(i);
      }
    }
    w.d();
    v();
    if (w.getItemCount() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      h();
      return;
    }
  }
  
  protected void a(CopyOnWriteArrayList<g> paramCopyOnWriteArrayList, List<h> paramList)
  {
    ao.a((com.estrongs.android.pop.app.d.a)getActivity(), paramList, null, new x(this, paramCopyOnWriteArrayList));
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (!w())
    {
      z.c(false);
      A.c(false);
      B.c(false);
    }
    for (;;)
    {
      g().invalidateOptionsMenu();
      return;
      z.c(paramBoolean1);
      A.c(paramBoolean2);
      B.c(paramBoolean3);
    }
  }
  
  protected void b(long paramLong)
  {
    boolean bool2 = true;
    if ((w == null) || (w.c() == 0))
    {
      b.setBackgroundResource(2130837585);
      b.setTextColor(q().getColor(2131558415));
      b.setClickable(false);
    }
    for (boolean bool1 = false;; bool1 = true)
    {
      b.setText(getString(2131231350, new Object[] { j.c(paramLong) }));
      v();
      if (!w()) {
        break label188;
      }
      if ((w != null) && (w.getItemCount() != 0)) {
        break;
      }
      z();
      return;
      b.setBackgroundResource(2130837586);
      b.setTextColor(q().getColor(2131558414));
      b.setClickable(true);
    }
    if (w.getItemCount() != w.c()) {}
    for (;;)
    {
      a(bool2, bool1, w.j());
      return;
      bool2 = false;
    }
    label188:
    z();
  }
  
  public void b(g paramg)
  {
    a(paramg, false);
  }
  
  public void b(List<com.estrongs.android.view.a.a> paramList)
  {
    z = new com.estrongs.android.view.a.a(c(2130838529), d(2131230887)).a(new z(this)).c(false);
    A = new com.estrongs.android.view.a.a(c(2130838528), d(2131230889)).a(new aa(this)).c(false);
    B = new com.estrongs.android.view.a.a(c(2130838527), d(2131230888)).a(new ab(this)).c(false);
    paramList.add(z);
    paramList.add(A);
    paramList.add(B);
  }
  
  protected AnalysisResultDetailActivity g()
  {
    return (AnalysisResultDetailActivity)getActivity();
  }
  
  protected void i()
  {
    a(getActivity());
    try
    {
      c.a(getActivity()).a("Analysis_delete");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void j()
  {
    w = new i(getActivity(), h, e);
    a.setAdapter(w);
    w.a(this);
    w.notifyDataSetChanged();
    if (e.equals("largefile"))
    {
      c.a(true);
      a(2131230954);
    }
    while (!e.equals("newcreate")) {
      return;
    }
    c.a(true);
    a(2131230955);
  }
  
  public void k()
  {
    if (w()) {
      w.f();
    }
  }
  
  public void l()
  {
    if (w()) {
      w.g();
    }
  }
  
  public void m()
  {
    if (w()) {
      w.i();
    }
  }
  
  protected void n()
  {
    t();
  }
  
  protected void r()
  {
    y = com.estrongs.android.pop.app.analysis.a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      return;
    }
    List localList = y.c();
    ArrayList localArrayList = new ArrayList();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        g localg = new g(this);
        a = false;
        b = localh;
        localArrayList.add(localg);
      }
    }
    for (;;)
    {
      x = localArrayList;
      a(localList);
      return;
      localArrayList = new ArrayList();
    }
  }
  
  protected void s()
  {
    w.a(x);
    w.notifyDataSetChanged();
    b(0L);
    if (w.getItemCount() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  protected void t()
  {
    super.t();
  }
  
  public boolean u()
  {
    if (w.c() > 0)
    {
      w.g();
      return true;
    }
    return super.u();
  }
  
  protected void v()
  {
    if ((w != null) && (w.getItemCount() != 0) && (w.k()))
    {
      int i = h;
      g();
      if (i != 3) {}
    }
    else
    {
      b.setVisibility(8);
      if (w()) {
        z();
      }
    }
    for (;;)
    {
      m.invalidate();
      return;
      b.setVisibility(0);
    }
  }
  
  public boolean w()
  {
    return true;
  }
  
  protected void y()
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = w.b();
    long l = w.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localCopyOnWriteArrayList.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(nextb);
    }
    o.addAndGet(l);
    a(localCopyOnWriteArrayList, localArrayList);
  }
  
  public void z()
  {
    z.c(false);
    A.c(false);
    B.c(false);
    g().invalidateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */