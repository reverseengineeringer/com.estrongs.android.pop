package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.m;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

public class hc
{
  ct a;
  private ESActivity b;
  private hn c = null;
  private String d = null;
  private boolean e = false;
  private com.estrongs.fs.b.am f = null;
  
  public hc(ESActivity paramESActivity, h paramh)
  {
    c = new hn(paramESActivity, paramh);
    b = paramESActivity;
    a = new ct(b).a(2131427577);
  }
  
  public hc(ESActivity paramESActivity, h paramh, boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = FexApplication.a();
      c = new hn((Context)localObject, paramh, paramBoolean);
      b = paramESActivity;
      e = paramBoolean;
      if (!paramBoolean) {
        break label93;
      }
    }
    label93:
    for (paramESActivity = FexApplication.a();; paramESActivity = b)
    {
      a = new ct(paramESActivity).a(2131427577);
      return;
      localObject = b;
      break;
    }
  }
  
  public hc(ESActivity paramESActivity, String paramString)
  {
    b = paramESActivity;
    a = new ct(b).a(2131427577);
    if ((com.estrongs.android.util.am.ba(paramString)) || (b.a().h(paramString) != null))
    {
      paramString = d.a().j(paramString);
      if (paramString == null)
      {
        ag.a(paramESActivity, 2131428302, 1);
        return;
      }
      c = new hn(paramESActivity, paramString);
      return;
    }
    d = paramString;
  }
  
  public void a()
  {
    if (c != null) {
      b();
    }
    while (bd.a(d)) {
      return;
    }
    Object localObject = g.a(b).inflate(2130903230, null);
    ((TextView)((View)localObject).findViewById(2131361822)).setText(2131427442);
    a.a((View)localObject);
    cg localcg = a.b();
    localObject = new hd(this, "Getting FileObject", localcg, (View)localObject);
    ((m)localObject).start();
    a.a(2131427340, new hg(this, (m)localObject));
    if (e) {
      localcg.getWindow().setType(2003);
    }
    localcg.show();
  }
  
  public void a(com.estrongs.fs.b.am paramam)
  {
    f = paramam;
  }
  
  public void b()
  {
    c.a(f);
    Object localObject = c.aq();
    boolean bool = false;
    if (com.estrongs.android.util.am.ba(c.c.getAbsolutePath())) {
      bool = com.estrongs.android.util.am.bW(c.c.getAbsolutePath());
    }
    a.a((View)localObject);
    if (!bool) {
      a.a(2131427340, new hh(this));
    }
    for (;;)
    {
      a.a(new hm(this));
      localObject = a.b();
      c.j = ((Dialog)localObject);
      if (e) {
        ((cg)localObject).getWindow().setType(2003);
      }
      ((cg)localObject).show();
      return;
      a.c(2131427340, new hi(this));
      a.b(2131427380, new hj(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */