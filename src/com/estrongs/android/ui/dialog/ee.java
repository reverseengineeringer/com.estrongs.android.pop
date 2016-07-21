package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.gf;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ee
  extends gf
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
  private ao q;
  private at r;
  private boolean s = false;
  
  public ee(Activity paramActivity, List<h> paramList, String paramString)
  {
    super(paramActivity);
    r = at.a(paramActivity);
    g = paramString;
    d = k(2131231132).toString();
    e = k(2131231134).toString();
    f = k(2131232204).toString();
    if ((paramList == null) || (paramList.size() <= 1)) {
      return;
    }
    a.addAll(paramList);
    n = ap.bB(((h)a.get(0)).getAbsolutePath());
    m = ap.cc(n);
    if (ap.bl(((h)a.get(0)).getPath())) {}
    for (s = true;; s = false)
    {
      i = ap.cp(n);
      f();
      paramList = (Button)b(2131624842);
      paramList.setOnClickListener(new ef(this, paramActivity));
      if (i) {
        paramList.setVisibility(8);
      }
      a(new int[] { 2131624737, 2131624845, 2131624846, 2131624339, 2131624338 }, new int[] { 2131232210, 2131232206, 2131232212, 2131232218, 2131232212 });
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
      ag.runOnUiThread(new eg(this));
    }
  }
  
  private void e()
  {
    if (j != null) {
      ag.runOnUiThread(new eh(this));
    }
  }
  
  private void f()
  {
    TextView localTextView1 = (TextView)b(2131624329);
    TextView localTextView2 = (TextView)b(2131624738);
    b = ((TextView)b(2131624338));
    o = b(2131624847);
    p = ((TextView)b(2131624849));
    c = ((TextView)b(2131624846));
    localTextView1.setText(j(2131231785));
    j = ((ProgressBar)b(2131624694));
    k = ((Button)b(2131624851));
    k.setOnClickListener(new ei(this));
    if (ap.bl(g)) {
      k.setVisibility(0);
    }
    while ((a.size() <= 1) || (j.b(new x(g))) || (ap.aX(g)))
    {
      localTextView2.setText("N/A");
      ((Button)b(2131624842)).setVisibility(8);
      return;
      k.setVisibility(8);
    }
    localTextView2.setText(Html.fromHtml("<a href=\"ss\">" + m + "</a>"));
    if (!i)
    {
      localTextView2.setClickable(true);
      localTextView2.setOnClickListener(new ej(this));
      return;
    }
    b(2131625216).setVisibility(8);
  }
  
  private void g()
  {
    if (q != null) {
      ag.runOnUiThread(new em(this));
    }
  }
  
  protected int a()
  {
    return 2130903342;
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
    if (ap.bl(n))
    {
      q = new ek(this, localArrayList, d.a(), true);
      q.addProgressListener(new el(this));
      q.a(ao.f);
      q.execute();
      return;
    }
    c.setText(i1 + " " + d + ", " + i2 + " " + e);
    a(b, l1);
    o.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */