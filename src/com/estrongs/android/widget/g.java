package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.cc;
import com.estrongs.android.view.dp;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.adb.c;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.m;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class g
{
  private ImageView a;
  protected String b;
  protected List<com.estrongs.fs.h> c = new LinkedList();
  boolean d;
  protected com.estrongs.fs.l e = new h(this);
  protected final m f = new m("phone-mnt-folder", true);
  protected final m g = new m("usb-mnt-folder", true);
  protected final m h = new m("usb-Otg-folder", true);
  private TextView i;
  private dp j;
  private View k;
  private View l;
  private View m;
  private View n;
  private com.estrongs.fs.h o;
  private a p = null;
  private int q = 0;
  private Activity r;
  private cg s;
  private al t;
  private String u = null;
  private ac v = null;
  private boolean w = false;
  
  public g(Activity paramActivity, String paramString, com.estrongs.fs.i parami)
  {
    this(paramActivity, paramString, parami, false);
  }
  
  public g(Activity paramActivity, String paramString, com.estrongs.fs.i parami, int paramInt)
  {
    r = paramActivity;
    q |= paramInt;
    t = al.a(r);
    s = new ct(paramActivity).a(new p(this)).b();
    f.a(com.estrongs.android.pop.ad.a(paramActivity).s());
    f.a(f.c(), paramActivity.getResources().getDrawable(2130837574));
    f.a(g.c(), paramActivity.getResources().getDrawable(2130837869));
    f.a(h.c(), paramActivity.getResources().getDrawable(2130837869));
    d.a("storage", e);
    a(paramActivity, parami);
    m();
    paramActivity = paramString;
    if (com.estrongs.android.pop.z.n)
    {
      paramActivity = paramString;
      if (paramString != null)
      {
        paramActivity = paramString;
        if (paramString.equals("/")) {
          paramActivity = null;
        }
      }
    }
    if (p == null)
    {
      j.b(com.estrongs.android.pop.ad.a(r).z(paramActivity));
      if (paramActivity == null) {
        break label317;
      }
      j.g(paramActivity);
    }
    for (;;)
    {
      u = paramActivity;
      return;
      j.b(p);
      break;
      label317:
      j.g("storage://");
    }
  }
  
  public g(Activity paramActivity, String paramString, com.estrongs.fs.i parami, boolean paramBoolean)
  {
    this(paramActivity, paramString, parami, paramBoolean, false);
  }
  
  public g(Activity paramActivity, String paramString, com.estrongs.fs.i parami, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramActivity, paramString, parami, a(paramBoolean1, paramBoolean2));
  }
  
  private static int a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1;
    if (paramBoolean1)
    {
      i1 = 6;
      if (!paramBoolean2) {
        break label23;
      }
    }
    label23:
    for (int i2 = 0;; i2 = 1)
    {
      return i2 | i1;
      i1 = 14;
      break;
    }
  }
  
  private boolean c(String paramString)
  {
    for (;;)
    {
      int i1;
      try
      {
        paramString = am.bE(paramString);
        if (paramString.endsWith("/")) {
          break label131;
        }
        paramString = paramString + "/";
      }
      catch (Exception paramString)
      {
        String str2;
        String str1;
        boolean bool;
        return false;
      }
      if (i1 < c.size())
      {
        str2 = ((com.estrongs.fs.h)c.get(i1)).getAbsolutePath();
        str1 = str2;
        if (!str2.endsWith("/")) {
          str1 = str2 + "/";
        }
        bool = str1.equals(paramString);
        if (bool) {
          return true;
        }
        i1 += 1;
      }
      else
      {
        return false;
        label131:
        i1 = 0;
      }
    }
  }
  
  private void d(String paramString)
  {
    new l(this, paramString).start();
  }
  
  private void m()
  {
    synchronized (c)
    {
      c.clear();
      com.estrongs.android.pop.ad localad = com.estrongs.android.pop.ad.a(r);
      ad localad1 = new ad(this);
      c.addAll(g());
      if ((q & 0x8) != 0)
      {
        if (!e.e())
        {
          ArrayList localArrayList = e.a(h);
          if (localArrayList != null) {
            c.addAll(localArrayList);
          }
        }
        c.addAll(localad1.a(localad, "smb"));
        c.addAll(localad1.a(localad, "ftp"));
        c.addAll(localad1.a(localad, "kanbox"));
        if (c.b()) {
          c.addAll(localad1.a(localad, "adb"));
        }
      }
      if (((q & 0x10) != 0) && (bd.b(localad.ae()))) {
        c.add(com.estrongs.fs.impl.pcs.b.a());
      }
      return;
    }
  }
  
  private void n()
  {
    s.setMiddleButton(r.getString(2131427361), new n(this));
  }
  
  protected com.estrongs.fs.h a(String paramString)
  {
    paramString = am.bE(paramString);
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.fs.h localh = (com.estrongs.fs.h)localIterator.next();
      if ((paramString != null) && (paramString.startsWith(localh.getPath()))) {
        return localh;
      }
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    if (q != paramInt)
    {
      q = paramInt;
      m();
    }
  }
  
  public void a(Context paramContext, com.estrongs.fs.i parami)
  {
    s.setTitle("File Browser");
    a(parami);
    n = j.aq();
    n.setMinimumHeight(1024);
    n.setMinimumWidth(1000);
    s.setContentView(n);
    a = ((ImageView)n.findViewById(2131362244));
    i = ((TextView)n.findViewById(2131362245));
    k = n.findViewById(2131362243);
    k.setFocusable(true);
    k.setBackgroundDrawable(al.a(r).a(2130837568, 2130837940));
    k.setOnClickListener(new w(this));
    l = n.findViewById(2131362246);
    l.setFocusable(true);
    l.setBackgroundDrawable(al.a(r).a(2130837568, 2130837940));
    l.setOnClickListener(new x(this));
    paramContext = n.findViewById(2131362247);
    paramContext.setFocusable(true);
    paramContext.setBackgroundDrawable(al.a(r).a(2130837568, 2130837940));
    paramContext.setOnClickListener(new z(this));
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    s.setOnDismissListener(new k(this, paramOnDismissListener));
  }
  
  public void a(cc paramcc)
  {
    if (j != null) {
      j.a(paramcc);
    }
  }
  
  public void a(ac paramac)
  {
    v = paramac;
  }
  
  protected void a(com.estrongs.fs.i parami)
  {
    if (j == null)
    {
      q localq = new q(this);
      j = new r(this, r, null, localq);
      j.h(true);
      j.a(new v(this));
      j.j(t.d(2131230738));
      if (parami != null) {
        j.b(parami);
      }
      j.a(3);
      int i1 = com.estrongs.android.pop.ad.a(r).L();
      a(com.estrongs.android.pop.view.utils.ac.a(i1 % 4, i1 / 4));
    }
  }
  
  public void a(a parama)
  {
    p = parama;
    j.b(p);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    s.setTitle(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    Object localObject = paramOnClickListener;
    if (paramOnClickListener == null) {
      localObject = new ab(this);
    }
    s.setSingleButton(paramCharSequence, (DialogInterface.OnClickListener)localObject);
    w = true;
  }
  
  public void a(boolean paramBoolean)
  {
    j.h(paramBoolean);
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public void b()
  {
    j.g();
  }
  
  public void b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    Object localObject = paramOnClickListener;
    if (paramOnClickListener == null) {
      localObject = new i(this);
    }
    if (a())
    {
      s.setRightButton(paramCharSequence, (DialogInterface.OnClickListener)localObject);
      return;
    }
    m = s.setConfirmButton(paramCharSequence, (DialogInterface.OnClickListener)localObject);
  }
  
  public void b(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "storage://";
    }
    o = a(str);
    if ((str != null) && (str.equalsIgnoreCase(j.c())))
    {
      b(true);
      return;
    }
    j.g(str);
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void c()
  {
    if (i.getText().toString().startsWith("storage:"))
    {
      j.g("storage://");
      return;
    }
    if (c(j.c()))
    {
      j.g("storage://");
      j.b(null);
      return;
    }
    j.j();
  }
  
  public void c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    Object localObject = paramOnClickListener;
    if (paramOnClickListener == null) {
      localObject = new j(this);
    }
    if (a())
    {
      s.setLeftButton(paramCharSequence, (DialogInterface.OnClickListener)localObject);
      return;
    }
    s.setCancelButton(paramCharSequence, (DialogInterface.OnClickListener)localObject);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {
      j.c(true);
    }
    if ((!w) && (a())) {
      n();
    }
    s.show();
    if (d) {
      j.b("storage://".equals(j.c()));
    }
    d = false;
    j.I();
  }
  
  public String d()
  {
    return j.c();
  }
  
  public com.estrongs.fs.h e()
  {
    return j.b();
  }
  
  public String f()
  {
    return j.c();
  }
  
  protected List<com.estrongs.fs.h> g()
  {
    List localList = am.a();
    String str2 = com.estrongs.android.pop.b.b();
    LinkedList localLinkedList = new LinkedList();
    if (((q & 0x1) != 0) && (!com.estrongs.android.pop.z.n)) {
      localLinkedList.add(new av(f, "/", r.getString(2131428709)));
    }
    String str1;
    if (((q & 0x2) != 0) && (localList.contains(str2)))
    {
      str1 = com.estrongs.android.pop.z.b(str2);
      localLinkedList.add(new av(g, str2, str1));
    }
    int i1;
    if ((q & 0x4) != 0)
    {
      i1 = 0;
      while (i1 < localList.size()) {
        if (str2.equals(localList.get(i1)))
        {
          i1 += 1;
        }
        else
        {
          str1 = com.estrongs.android.pop.z.c((String)localList.get(i1));
          if (str1 != null) {
            break label220;
          }
          str1 = (String)localList.get(i1);
        }
      }
    }
    label220:
    for (;;)
    {
      localLinkedList.add(new av(g, (String)localList.get(i1), str1));
      break;
      return localLinkedList;
    }
  }
  
  public boolean h()
  {
    if (s != null) {
      return s.isShowing();
    }
    return false;
  }
  
  public List<com.estrongs.fs.h> i()
  {
    return j.w();
  }
  
  public void j()
  {
    c(false);
  }
  
  public void k()
  {
    s.dismiss();
  }
  
  public cg l()
  {
    return s;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */