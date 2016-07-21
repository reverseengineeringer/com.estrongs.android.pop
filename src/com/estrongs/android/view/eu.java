package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.view.View.OnTouchListener;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ProgressBar;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.af;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class eu
  extends cr
{
  private ExpandableListView a = null;
  private ArrayList<fj> al;
  private fj am = null;
  private ProgressBar an;
  private Button ao;
  private co ap = new ev(this);
  private BaseExpandableListAdapter aq = new fb(this);
  private af ar = new fc(this);
  private cr b = null;
  private Drawable c;
  private Drawable d;
  private ad e = null;
  
  public eu(Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
    s();
  }
  
  private void m(int paramInt)
  {
    if ((a != null) && (!a.isGroupExpanded(paramInt)))
    {
      if (bk.m()) {
        a.expandGroup(paramInt);
      }
    }
    else {
      return;
    }
    W.post(new ex(this, paramInt));
  }
  
  private void t()
  {
    ey localey = new ey(this);
    al = new ArrayList();
    fj localfj = new fj(null);
    a = ag.getString(2131231658);
    e = new fk(this, ag, J, localey);
    e.b(new fl(2));
    b = "smb://";
    e.a(ap);
    al.add(localfj);
    localfj = new fj(null);
    a = ag.getString(2131231652);
    e = new fk(this, ag, J, localey);
    e.b(new fl(2));
    b = "ftp://";
    e.a(ap);
    al.add(localfj);
    if (com.estrongs.fs.impl.adb.c.b())
    {
      localfj = new fj(null);
      a = ag.getString(2131231646);
      e = new fk(this, ag, J, localey);
      e.b(new fl(2));
      b = "adb://";
      e.a(ap);
      al.add(localfj);
    }
    am = new fj(null);
    am.a = ag.getString(2131232593);
    am.e = new fk(this, ag, J, localey);
    am.e.b(new fl(1));
    am.e.b(new fa(this, true));
    am.b = "scannedserver://";
    am.e.a(ap);
    al.add(am);
  }
  
  protected RecyclerView F()
  {
    RecyclerView localRecyclerView = super.F();
    if (localRecyclerView != null) {
      localRecyclerView.setHasFixedSize(true);
    }
    return localRecyclerView;
  }
  
  public int P()
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        return e.P();
      }
    }
    return 1;
  }
  
  protected int a()
  {
    return 2130903346;
  }
  
  public void a(int paramInt)
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        e.a(paramInt);
      }
    }
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    a.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a(cp paramcp)
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      cr localcr = nexte;
      if (localcr != null)
      {
        localcr.a(paramcp);
        localcr.a(new fi(this, localcr, paramcp));
      }
    }
  }
  
  public void a(cq<h> paramcq)
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        e.a(new ew(this, paramcq));
      }
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    D = paramh;
    C = paramh.getAbsolutePath();
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null)
      {
        e.a(paramBoolean);
        e.e();
      }
    }
  }
  
  public void b(a parama)
  {
    J = parama;
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if ((e != null) && (!"scannedserver://".equals(e.c()))) {
        e.b(parama);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        e.b(paramBoolean);
      }
    }
  }
  
  public void c(int paramInt)
  {
    if ((paramInt == -1) || (paramInt == -2))
    {
      Iterator localIterator = al.iterator();
      while (localIterator.hasNext()) {
        nexte.c(paramInt);
      }
    }
  }
  
  public int d()
  {
    Iterator localIterator = al.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e == null) {
        break label51;
      }
      i = e.d() + i;
    }
    label51:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public h d(int paramInt)
  {
    try
    {
      if (b != null)
      {
        h localh = (h)b.h().get(paramInt);
        return localh;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  protected void i()
  {
    b.a().a(ac);
  }
  
  public void i_()
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        e.i_();
      }
    }
    e.b(ar);
    super.i_();
    com.estrongs.android.ui.feedback.c.a(ag);
  }
  
  public void j(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ao.setText(ag.getString(2131231628));
      an.setVisibility(0);
      return;
    }
    ao.setText(ag.getString(2131230885));
    an.setVisibility(8);
  }
  
  public void l()
  {
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        e.l();
      }
    }
  }
  
  protected void n() {}
  
  public List<h> o()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if (e != null) {
        localArrayList.addAll(e.o());
      }
    }
    return localArrayList;
  }
  
  protected void s()
  {
    e = ad.a(ag);
    e.a(ar);
    d = ag.getResources().getDrawable(2130838008);
    c = ag.getResources().getDrawable(2130838044);
    t();
    a = ((ExpandableListView)b(2131625223));
    a.setGroupIndicator(ag.getResources().getDrawable(2130837692));
    a.setAdapter(aq);
    a.setOnGroupClickListener(new fd(this));
    a.setOnGroupCollapseListener(new fe(this));
    a.setOnGroupExpandListener(new ff(this));
    Iterator localIterator = al.iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      e.j(b);
    }
    W.postDelayed(new fg(this), 50L);
    if (O != null) {
      O.a(this, true);
    }
    ao = ((Button)b(2131624774));
    ao.setBackgroundResource(2130837718);
    ao.setTextColor(at.a(ag).c(2131558745));
    ao.setOnClickListener(new fh(this));
    an = ((ProgressBar)b(2131624775));
    j(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */