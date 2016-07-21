package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.ui.view.ck;
import com.estrongs.android.view.a.a;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;
import java.util.List;
import java.util.Map;

public class ch
  extends f
{
  public cq k;
  FileExplorerActivity l = null;
  private ck m;
  private View n;
  private boolean o = true;
  private boolean p = false;
  private q q;
  private m r;
  private int s = 0;
  private boolean t = true;
  
  public ch(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, paramBoolean, true);
  }
  
  public ch(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1, paramBoolean2);
    o();
  }
  
  private void o()
  {
    e = cu.a(b);
    l = ((FileExplorerActivity)b);
    RelativeLayout localRelativeLayout = (RelativeLayout)l.findViewById(2131624435);
    n = localRelativeLayout;
    m = new ck(l, localRelativeLayout, 1);
    q = new ci(this);
    FexApplication.a().a(q);
    o = ad.a(b).al();
    p = ad.a(b).an();
    k();
    m.a("normal_mode", this);
    m.a("paste_mode", new jm(m, l, d));
  }
  
  public void a(String paramString, List<h> paramList)
  {
    if (!"edit_mode".equals(m.a())) {}
    while (k == null) {
      return;
    }
    k.a(paramString, paramList);
  }
  
  public void b(boolean paramBoolean)
  {
    cr localcr = l.O();
    if ((localcr != null) && (localcr.p()))
    {
      localcr.ah();
      l.ab();
    }
    FileExplorerActivity localFileExplorerActivity;
    boolean bool2;
    if (k == null)
    {
      localFileExplorerActivity = l;
      bool2 = d;
      if (e) {
        break label157;
      }
    }
    label157:
    for (boolean bool1 = true;; bool1 = false)
    {
      k = new cj(this, localFileExplorerActivity, bool2, null, bool1);
      m.a("edit_mode", k);
      m.a(true);
      m.a("edit_mode", Boolean.valueOf(paramBoolean));
      l.q = "edit_mode";
      l.L();
      if (localcr != null)
      {
        localcr.a(true);
        l.a(localcr.o(), localcr.d());
      }
      return;
    }
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected void c()
  {
    if (FileExplorerActivity.X() != null)
    {
      if (i.b()) {
        FileExplorerActivity.X().q();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.X().u();
  }
  
  public void c(boolean paramBoolean)
  {
    a(paramBoolean);
    m.a(paramBoolean);
  }
  
  protected void d()
  {
    if (FileExplorerActivity.X() != null)
    {
      if (i.b()) {
        FileExplorerActivity.X().u();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.X().q();
  }
  
  public void d(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public void f(int paramInt)
  {
    r.a(paramInt);
    String[] arrayOfString2 = r.a();
    String[] arrayOfString1 = arrayOfString2;
    if (!t) {
      arrayOfString1 = r.a(arrayOfString2, "message_box");
    }
    if (arrayOfString1 != null) {
      a(arrayOfString1);
    }
    s = paramInt;
    j();
  }
  
  public boolean f()
  {
    return false;
  }
  
  public void g()
  {
    super.g();
    FexApplication.a().b(q);
  }
  
  protected void h()
  {
    r = new m((FileExplorerActivity)b);
    r.e();
  }
  
  protected Map<String, a> i()
  {
    return r.c();
  }
  
  public void k()
  {
    r.a(o, p);
  }
  
  public ck l()
  {
    return m;
  }
  
  public void m()
  {
    m.a("normal_mode", Boolean.valueOf(true));
    if (k != null) {
      k.j();
    }
  }
  
  public void n()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */