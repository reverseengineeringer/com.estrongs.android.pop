package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.h;
import java.io.File;
import java.util.List;

public class l
{
  public static boolean a = false;
  private h A = null;
  private String B;
  private DialogInterface.OnDismissListener C;
  private av D;
  private com.estrongs.android.view.e E;
  boolean b = false;
  protected String c;
  private Context d;
  private cg e;
  private d f;
  private ProgressBar g = null;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private View n;
  private a o;
  private cg p = null;
  private be q = null;
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
  
  public l(com.estrongs.android.view.e parame, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList, boolean paramBoolean1, boolean paramBoolean2, int paramInt, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    E = parame;
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
    n = g.a(d).inflate(2130903050, null);
    e = new ct(d).a(2131427454).a(n).a(2131427340, new u(this)).a(new m(this)).b();
    e.setOnKeyListener(new v(this));
    if (C != null) {
      e.setOnDismissListener(C);
    }
    ((TextView)n.findViewById(2131361822)).setText(d.getString(2131428119, new Object[] { am.d(v) }));
    ((TextView)n.findViewById(2131361884)).setText(d.getString(2131428244));
    h = ((TextView)n.findViewById(2131361885));
    i = ((TextView)n.findViewById(2131361882));
    j = ((TextView)n.findViewById(2131361883));
    k = ((TextView)n.findViewById(2131361886));
    l = ((TextView)n.findViewById(2131361887));
    g = ((ProgressBar)n.findViewById(2131361889));
    m = ((TextView)n.findViewById(2131361888));
    if (new File(v).isDirectory())
    {
      ag.a(d, v + " " + d.getResources().getString(2131427396), 0);
      c();
      return;
    }
    f = new w(this, d, this, d.getResources().getText(2131427861).toString());
    f.b(i);
    f.c(j);
    f.a(h);
    f.a(g);
    f.d(m);
    f.e(k);
    f.f(l);
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
      q = new be(d, true, false);
      q.setButton(-1, d.getResources().getString(2131427339), new ac(this));
      q.setButton(-2, d.getResources().getString(2131427340), new ad(this));
      q.setOnCancelListener(new n(this));
    }
  }
  
  public void a(av paramav)
  {
    D = paramav;
  }
  
  protected void a(String paramString)
  {
    if (p == null)
    {
      p = new com.estrongs.android.a.e(d, new aa(this), true);
      p.setTitle(d.getResources().getString(2131427401));
      p.setOnKeyListener(new ab(this));
    }
    p.setMessage(d.getResources().getString(2131427810) + "\n" + paramString);
  }
  
  public void b()
  {
    if ((B == null) && (bc.m(v)))
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