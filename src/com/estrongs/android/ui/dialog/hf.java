package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.m;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

public class hf
{
  cv a;
  private Activity b;
  private hq c = null;
  private String d = null;
  private boolean e = false;
  private ao f = null;
  private boolean g = false;
  private boolean h = false;
  private int i;
  private int j;
  private DialogInterface.OnClickListener k;
  private DialogInterface.OnClickListener l;
  private boolean m = true;
  
  public hf(Activity paramActivity, h paramh)
  {
    c = new hq(paramActivity, paramh);
    b = paramActivity;
    a = new cv(b).a(2131232219);
  }
  
  public hf(Activity paramActivity, h paramh, boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = FexApplication.a();
      c = new hq((Context)localObject, paramh, paramBoolean);
      b = paramActivity;
      e = paramBoolean;
      if (!paramBoolean) {
        break label108;
      }
    }
    label108:
    for (paramActivity = FexApplication.a();; paramActivity = b)
    {
      a = new cv(paramActivity).a(2131232219);
      return;
      localObject = b;
      break;
    }
  }
  
  public hf(Activity paramActivity, String paramString, boolean paramBoolean)
  {
    b = paramActivity;
    a = new cv(b).a(2131232219);
    if ((ap.bl(paramString)) || (b.a().h(paramString) != null))
    {
      paramString = d.a().j(paramString);
      if (paramString == null)
      {
        ak.a(paramActivity, 2131230822, 1);
        return;
      }
      c = new hq(paramActivity, paramString, paramBoolean);
      return;
    }
    d = paramString;
  }
  
  public void a()
  {
    if (c != null) {
      b();
    }
    while (bk.a(d)) {
      return;
    }
    Object localObject = k.a(b).inflate(2130903394, null);
    ((TextView)((View)localObject).findViewById(2131624200)).setText(2131232182);
    a.a((View)localObject);
    ci localci = a.b();
    localObject = new hg(this, "Getting FileObject", localci, (View)localObject);
    ((m)localObject).start();
    a.a(2131231265, new hj(this, (m)localObject));
    if (e) {
      localci.getWindow().setType(2003);
    }
    localci.show();
  }
  
  public void a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    i = paramInt;
    k = paramOnClickListener;
  }
  
  public void a(ao paramao)
  {
    f = paramao;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void b()
  {
    c.a(f);
    Object localObject = c.aE();
    if (!m) {
      ((View)localObject).findViewById(2131624850).setVisibility(8);
    }
    boolean bool = false;
    if (ap.bl(c.c.getAbsolutePath())) {
      bool = ap.cp(c.c.getAbsolutePath());
    }
    a.a((View)localObject);
    if ((!bool) || (g)) {
      if (h)
      {
        if (j != 0) {
          a.b(j, l);
        }
        if (i != 0) {
          a.c(i, k);
        }
      }
    }
    for (;;)
    {
      a.a(new hp(this));
      localObject = a.b();
      c.j = ((Dialog)localObject);
      if (e) {
        ((ci)localObject).getWindow().setType(2003);
      }
      ((ci)localObject).show();
      return;
      a.a(2131231265, new hk(this));
      continue;
      a.c(2131231265, new hl(this));
      a.b(2131230882, new hm(this));
    }
  }
  
  public void b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    j = paramInt;
    l = paramOnClickListener;
  }
  
  public void b(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void c(boolean paramBoolean)
  {
    m = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */