package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View.OnTouchListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.af;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.bd;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.c;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cq
  extends aw
{
  private ExpandableListView a = null;
  private ad ai = null;
  private ArrayList<dd> aj;
  private dd ak = null;
  private AdapterView.OnItemClickListener al = new cr(this);
  private BaseExpandableListAdapter am = new cv(this);
  private af an = new cw(this);
  private aw b = null;
  private Drawable c;
  private Drawable d;
  
  public cq(Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
    p();
  }
  
  private void d(int paramInt)
  {
    if ((a != null) && (!a.isGroupExpanded(paramInt)))
    {
      if (bd.m()) {
        a.expandGroup(paramInt);
      }
    }
    else {
      return;
    }
    T.post(new dc(this, paramInt));
  }
  
  private void q()
  {
    cs localcs = new cs(this);
    aj = new ArrayList();
    dd localdd = new dd(null);
    a = ad.getString(2131427410);
    d = new de(this, ad, C, localcs);
    d.b(new df(2));
    b = "smb://";
    d.a(al);
    aj.add(localdd);
    localdd = new dd(null);
    a = ad.getString(2131427412);
    d = new de(this, ad, C, localcs);
    b = "net://";
    d.a(al);
    aj.add(localdd);
    localdd = new dd(null);
    a = ad.getString(2131427411);
    d = new de(this, ad, C, localcs);
    d.b(new df(2));
    b = "ftp://";
    d.a(al);
    aj.add(localdd);
    if (c.b())
    {
      localdd = new dd(null);
      a = ad.getString(2131428722);
      d = new de(this, ad, C, localcs);
      d.b(new df(2));
      b = "adb://";
      d.a(al);
      aj.add(localdd);
    }
    ak = new dd(null);
    ak.a = ad.getString(2131428197);
    ak.d = new de(this, ad, C, localcs);
    ak.d.b(new df(1));
    ak.d.b(new cu(this, true));
    ak.b = "scannedserver://";
    ak.d.a(al);
    aj.add(ak);
  }
  
  public int B()
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        return d.B();
      }
    }
    return 1;
  }
  
  protected int a()
  {
    return 2130903195;
  }
  
  public void a(int paramInt)
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        d.a(paramInt);
      }
    }
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    a.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      aw localaw = nextd;
      if (localaw != null)
      {
        localaw.a(paramOnItemLongClickListener);
        localaw.a(new da(this, localaw, paramOnItemLongClickListener));
      }
    }
  }
  
  public void a(av<h> paramav)
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        d.a(new db(this, paramav));
      }
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    w = paramh;
    v = paramh.getAbsolutePath();
  }
  
  public void a(boolean paramBoolean)
  {
    l = paramBoolean;
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null)
      {
        d.a(paramBoolean);
        d.e();
      }
    }
  }
  
  public void a_()
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        d.a_();
      }
    }
    ai.b(an);
    super.a_();
  }
  
  public h b(int paramInt)
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
  
  public void b(a parama)
  {
    C = parama;
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if ((d != null) && (!"scannedserver://".equals(d.c()))) {
        d.b(parama);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        d.b(paramBoolean);
      }
    }
  }
  
  public void c(int paramInt)
  {
    if ((paramInt == -1) || (paramInt == -2))
    {
      Iterator localIterator = aj.iterator();
      while (localIterator.hasNext()) {
        nextd.c(paramInt);
      }
    }
  }
  
  public int d()
  {
    Iterator localIterator = aj.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d == null) {
        break label51;
      }
      i = d.d() + i;
    }
    label51:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  protected void i()
  {
    b.a().a(Y);
  }
  
  public void l()
  {
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        d.l();
      }
    }
  }
  
  protected void n() {}
  
  protected void p()
  {
    ai = ad.a(ad);
    ai.a(an);
    d = ad.getResources().getDrawable(2130837511);
    c = ad.getResources().getDrawable(2130837512);
    q();
    a = ((ExpandableListView)k(2131362485));
    a.setGroupIndicator(ad.getResources().getDrawable(2130837568));
    a.setAdapter(am);
    a.setOnGroupCollapseListener(new cx(this));
    a.setOnGroupExpandListener(new cy(this));
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      d.g(b);
    }
    T.postDelayed(new cz(this), 50L);
    if (H != null) {
      H.a(this, true);
    }
  }
  
  public List<h> w()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = aj.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (d != null) {
        localArrayList.addAll(d.w());
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */