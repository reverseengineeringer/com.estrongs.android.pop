package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.dx;
import com.estrongs.android.view.fv;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.adb.c;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class f
{
  private ImageView a;
  protected String b;
  protected List<com.estrongs.fs.h> c = new LinkedList();
  boolean d;
  protected com.estrongs.fs.v e = new g(this);
  protected final com.estrongs.fs.w f = new com.estrongs.fs.w("phone-mnt-folder", true);
  protected final com.estrongs.fs.w g = new com.estrongs.fs.w("usb-mnt-folder", true);
  protected final com.estrongs.fs.w h = new com.estrongs.fs.w("usb-Otg-folder", true);
  private TextView i;
  private fv j;
  private View k;
  private View l;
  private View m;
  private View n;
  private com.estrongs.fs.h o;
  private a p = null;
  private int q = 0;
  private Activity r;
  private ci s;
  private at t;
  private String u = null;
  private ab v = null;
  private boolean w = false;
  
  public f(Activity paramActivity, String paramString, com.estrongs.fs.i parami)
  {
    this(paramActivity, paramString, parami, false);
  }
  
  public f(Activity paramActivity, String paramString, com.estrongs.fs.i parami, int paramInt)
  {
    r = paramActivity;
    q |= paramInt;
    t = at.a(r);
    s = new cv(paramActivity).a(new o(this)).b();
    com.estrongs.android.h.f.a(ad.a(paramActivity).t());
    com.estrongs.android.h.f.a(f.c(), paramActivity.getResources().getDrawable(2130837922));
    com.estrongs.android.h.f.a(g.c(), paramActivity.getResources().getDrawable(2130838169));
    com.estrongs.android.h.f.a(h.c(), paramActivity.getResources().getDrawable(2130838169));
    d.a("storage", e);
    a(paramActivity, parami);
    m();
    paramActivity = paramString;
    if (z.n)
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
      j.b(ad.a(r).z(paramActivity));
      if (paramActivity == null) {
        break label317;
      }
      j.j(paramActivity);
    }
    for (;;)
    {
      u = paramActivity;
      return;
      j.b(p);
      break;
      label317:
      j.j("storage://");
    }
  }
  
  public f(Activity paramActivity, String paramString, com.estrongs.fs.i parami, boolean paramBoolean)
  {
    this(paramActivity, paramString, parami, paramBoolean, false);
  }
  
  public f(Activity paramActivity, String paramString, com.estrongs.fs.i parami, boolean paramBoolean1, boolean paramBoolean2)
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
        paramString = ap.bV(paramString);
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
    new k(this, paramString).start();
  }
  
  private void m()
  {
    synchronized (c)
    {
      c.clear();
      ad localad = ad.a(r);
      ac localac = new ac(this);
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
        c.addAll(localac.a(localad, "smb"));
        c.addAll(localac.a(localad, "ftp"));
        c.addAll(localac.a(localad, "dropbox"));
        if (c.b()) {
          c.addAll(localac.a(localad, "adb"));
        }
      }
      if (((q & 0x10) != 0) && (bk.b(localad.af()))) {
        c.add(com.estrongs.fs.impl.pcs.b.a());
      }
      return;
    }
  }
  
  private void n()
  {
    s.setMiddleButton(r.getString(2131230867), new m(this));
  }
  
  protected com.estrongs.fs.h a(String paramString)
  {
    paramString = ap.bV(paramString);
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
    n = j.aE();
    n.setMinimumHeight(1024);
    n.setMinimumWidth(1000);
    s.setContentView(n);
    a = ((ImageView)n.findViewById(2131624837));
    i = ((TextView)n.findViewById(2131624838));
    k = n.findViewById(2131624836);
    k.setFocusable(true);
    paramContext = (ImageView)k.findViewById(2131624054);
    paramContext.setImageDrawable(com.estrongs.android.ui.d.g.a(paramContext.getDrawable(), r.getResources().getColor(2131558716)));
    k.setBackgroundDrawable(at.a(r).a(2130837692, 2130838267));
    k.setOnClickListener(new v(this));
    l = n.findViewById(2131624839);
    l.setFocusable(true);
    paramContext = (ImageView)l.findViewById(2131624054);
    parami = paramContext.getDrawable();
    com.estrongs.android.ui.d.g.a(parami, r.getResources().getColor(2131558716));
    paramContext.setImageDrawable(parami);
    l.setBackgroundDrawable(at.a(r).a(2130837692, 2130838267));
    l.setOnClickListener(new w(this));
    paramContext = n.findViewById(2131624840);
    paramContext.setFocusable(true);
    parami = (ImageView)paramContext.findViewById(2131624054);
    Drawable localDrawable = parami.getDrawable();
    com.estrongs.android.ui.d.g.a(localDrawable, r.getResources().getColor(2131558716));
    parami.setImageDrawable(localDrawable);
    paramContext.setBackgroundDrawable(at.a(r).a(2130837692, 2130838267));
    paramContext.setOnClickListener(new y(this));
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    s.setOnDismissListener(new j(this, paramOnDismissListener));
  }
  
  public void a(dx paramdx)
  {
    if (j != null) {
      j.a(paramdx);
    }
  }
  
  public void a(ab paramab)
  {
    v = paramab;
  }
  
  protected void a(com.estrongs.fs.i parami)
  {
    if (j == null)
    {
      p localp = new p(this);
      j = new q(this, r, null, localp);
      j.h(true);
      j.a(new u(this));
      j.i(t.c(2131558661));
      if (parami != null) {
        j.b(parami);
      }
      j.a(3);
      int i1 = ad.a(r).M();
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
      localObject = new aa(this);
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
      localObject = new h(this);
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
    j.j(str);
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void c()
  {
    if (i.getText().toString().startsWith("storage:"))
    {
      j.j("storage://");
      return;
    }
    if (c(j.c()))
    {
      j.j("storage://");
      j.b(null);
      return;
    }
    j.j();
  }
  
  public void c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    Object localObject = paramOnClickListener;
    if (paramOnClickListener == null) {
      localObject = new i(this);
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
    j.Z();
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
    List localList = ap.a();
    String str2 = com.estrongs.android.pop.b.b();
    LinkedList localLinkedList = new LinkedList();
    if (((q & 0x1) != 0) && (!z.n)) {
      localLinkedList.add(new aw(f, "/", r.getString(2131231661)));
    }
    String str1;
    if (((q & 0x2) != 0) && (localList.contains(str2)))
    {
      str1 = z.b(str2);
      localLinkedList.add(new aw(g, str2, str1));
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
          str1 = z.c((String)localList.get(i1));
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
      localLinkedList.add(new aw(g, (String)localList.get(i1), str1));
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
    return j.o();
  }
  
  public void j()
  {
    c(false);
  }
  
  public void k()
  {
    s.dismiss();
  }
  
  public ci l()
  {
    return s;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */