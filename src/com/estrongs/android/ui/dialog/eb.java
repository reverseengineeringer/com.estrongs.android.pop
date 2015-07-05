package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.ea;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class eb
  extends ea
{
  protected List<h> a = new ArrayList();
  TextView b;
  TextView c;
  String d = "";
  String e = "";
  String f = "";
  protected String g = null;
  public Dialog h = null;
  boolean i;
  ProgressBar j = null;
  Button k = null;
  a l = null;
  private String m = null;
  private String n = null;
  private View o;
  private TextView p;
  private com.estrongs.fs.b.am q;
  private al r;
  private boolean s = false;
  
  public eb(Activity paramActivity, List<h> paramList, String paramString)
  {
    super(paramActivity);
    r = al.a(paramActivity);
    g = paramString;
    d = m(2131427428).toString();
    e = m(2131427429).toString();
    f = m(2131427590).toString();
    if ((paramList == null) || (paramList.size() <= 1)) {
      return;
    }
    a.addAll(paramList);
    n = com.estrongs.android.util.am.bk(((h)a.get(0)).getAbsolutePath());
    m = com.estrongs.android.util.am.bL(n);
    if (com.estrongs.android.util.am.ba(((h)a.get(0)).getPath())) {}
    for (s = true;; s = false)
    {
      i = com.estrongs.android.util.am.bW(n);
      f();
      paramList = (Button)k(2131362250);
      paramList.setOnClickListener(new ec(this, paramActivity));
      if (i) {
        paramList.setVisibility(8);
      }
      a(new int[] { 2131362172, 2131362253, 2131362254, 2131361840, 2131361839 }, new int[] { 2131427579, 2131427581, 2131428708, 2131427580, 2131428708 });
      return;
    }
  }
  
  private void a(TextView paramTextView, long paramLong)
  {
    if (paramLong < 0L)
    {
      paramTextView.setText("N/A");
      return;
    }
    paramTextView.setText(j.c(paramLong) + " (" + j.d(paramLong) + " " + f + ")");
  }
  
  private void d()
  {
    if (j != null) {
      ad.runOnUiThread(new ed(this));
    }
  }
  
  private void e()
  {
    if (j != null) {
      ad.runOnUiThread(new ee(this));
    }
  }
  
  private void f()
  {
    TextView localTextView1 = (TextView)k(2131361830);
    TextView localTextView2 = (TextView)k(2131362173);
    b = ((TextView)k(2131361839));
    o = k(2131362255);
    p = ((TextView)k(2131362257));
    c = ((TextView)k(2131362254));
    localTextView1.setText(l(2131427890));
    j = ((ProgressBar)k(2131362126));
    k = ((Button)k(2131362259));
    k.setOnClickListener(new ef(this));
    if (com.estrongs.android.util.am.ba(n)) {
      k.setVisibility(0);
    }
    while ((a.size() <= 1) || (j.b(new n(g))) || (com.estrongs.android.util.am.aN(g)))
    {
      localTextView2.setText("N/A");
      ((Button)k(2131362250)).setVisibility(8);
      return;
      k.setVisibility(8);
    }
    localTextView2.setText(Html.fromHtml("<a href=\"ss\">" + m + "</a>"));
    if (!i)
    {
      localTextView2.setClickable(true);
      localTextView2.setOnClickListener(new eg(this));
      return;
    }
    k(2131362479).setVisibility(8);
  }
  
  private void g()
  {
    if (q != null) {
      ad.runOnUiThread(new ej(this));
    }
  }
  
  protected int a()
  {
    return 2130903192;
  }
  
  public void b()
  {
    if ((q != null) && (q.getTaskStatus() != 4) && (q.getTaskStatus() != 5)) {
      q.requestStop();
    }
  }
  
  public void c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    int i1 = 0;
    long l1 = 0L;
    int i2 = 0;
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if ((!localh.getAbsolutePath().equals("/sys")) && (!localh.getAbsolutePath().equals("/sys/")) && (!localh.getAbsolutePath().equals("/proc")) && (!localh.getAbsolutePath().equals("/proc/")))
      {
        localArrayList.add(localh);
        int i3;
        if (localh.getFileType().a())
        {
          i3 = i2 + 1;
          i2 = i1;
          i1 = i3;
        }
        for (;;)
        {
          i3 = i2;
          i2 = i1;
          i1 = i3;
          break;
          long l2 = localh.length();
          i3 = i1 + 1;
          l1 += l2;
          i1 = i2;
          i2 = i3;
        }
      }
    }
    if (com.estrongs.android.util.am.ba(n))
    {
      q = new eh(this, localArrayList, d.a(), true);
      q.addProgressListener(new ei(this));
      q.a(com.estrongs.fs.b.am.f);
      q.execute();
      return;
    }
    c.setText(i1 + " " + d + ", " + i2 + " " + e);
    a(b, l1);
    o.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */