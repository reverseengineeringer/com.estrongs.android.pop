package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.view.g;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.i;
import java.io.File;
import java.util.List;

public class l
{
  public static boolean a = false;
  private i A = null;
  private String B;
  private DialogInterface.OnDismissListener C;
  private az D;
  private g E;
  boolean b = false;
  protected String c;
  private Context d;
  private ci e;
  private com.estrongs.io.archive.e f;
  private ProgressBar g = null;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private View n;
  private a o;
  private ci p = null;
  private cb q = null;
  private HandlerThread r = null;
  private boolean s = false;
  private boolean t = false;
  private String u;
  private String v;
  private String w;
  private String x;
  private List<String> y;
  private int z = -1;
  
  public l(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList, boolean paramBoolean1, boolean paramBoolean2, int paramInt, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    this(null, paramContext, paramString1, paramString2, paramString3, paramString4, paramList, paramBoolean1, paramBoolean2, paramInt, paramOnDismissListener);
  }
  
  public l(g paramg, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList, boolean paramBoolean1, boolean paramBoolean2, int paramInt, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    E = paramg;
    d = paramContext;
    v = paramString1;
    w = paramString2;
    x = paramString3;
    y = paramList;
    s = paramBoolean1;
    z = paramInt;
    B = paramString4;
    C = paramOnDismissListener;
    t = paramBoolean2;
    d();
  }
  
  private void d()
  {
    n = k.a(d).inflate(2130903112, null);
    e = new cv(d).a(2131232174).a(n).a(2131231265, new u(this)).a(new m(this)).b();
    e.setOnKeyListener(new v(this));
    if (C != null) {
      e.setOnDismissListener(C);
    }
    ((TextView)n.findViewById(2131624200)).setText(d.getString(2131232402, new Object[] { ap.d(v) }));
    ((TextView)n.findViewById(2131624382)).setText(d.getString(2131232175));
    h = ((TextView)n.findViewById(2131624383));
    i = ((TextView)n.findViewById(2131624380));
    j = ((TextView)n.findViewById(2131624381));
    k = ((TextView)n.findViewById(2131624384));
    l = ((TextView)n.findViewById(2131624385));
    g = ((ProgressBar)n.findViewById(2131624387));
    m = ((TextView)n.findViewById(2131624386));
    if (new File(v).isDirectory())
    {
      ak.a(d, v + " " + d.getResources().getString(2131231716), 0);
      c();
      return;
    }
    f = new w(this, d, this, d.getResources().getText(2131231775).toString());
    f.f(i);
    f.g(j);
    f.e(h);
    f.a(g);
    f.b(m);
    f.h(k);
    f.i(l);
    f.b(x);
    f.c(v);
    o = new x(this, f, x);
  }
  
  private void e()
  {
    a = true;
    r = new ae(this, "ArchiveExtract", 5);
    r.start();
  }
  
  private void f()
  {
    if (q == null) {
      a();
    }
    q.show();
  }
  
  protected void a()
  {
    if (q == null)
    {
      q = new cb(d, true, false);
      q.setButton(-1, d.getResources().getString(2131231270), new ac(this));
      q.setButton(-2, d.getResources().getString(2131231265), new ad(this));
      q.setOnCancelListener(new n(this));
    }
  }
  
  public void a(az paramaz)
  {
    D = paramaz;
  }
  
  protected void a(String paramString)
  {
    if (p == null)
    {
      p = new com.estrongs.android.d.e(d, new aa(this), true);
      p.setTitle(d.getResources().getString(2131231721));
      p.setOnKeyListener(new ab(this));
    }
    p.setMessage(d.getResources().getString(2131231340) + "\n" + paramString);
  }
  
  public void b()
  {
    if ((B == null) && (bg.m(v)))
    {
      new Thread(new o(this)).start();
      return;
    }
    e();
    e.show();
  }
  
  public void c()
  {
    r = null;
    a = false;
    if ((o != null) && (!o.b())) {
      o.e();
    }
    if ((A != null) && (A.e())) {
      A.d();
    }
    e.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */