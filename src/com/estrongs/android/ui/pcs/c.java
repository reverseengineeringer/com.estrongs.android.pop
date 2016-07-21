package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Handler;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;

public class c
{
  private ci a;
  private Context b;
  private q c;
  private DialogInterface.OnCancelListener d;
  private u e;
  private boolean f = false;
  private String g = null;
  private w h;
  private boolean i;
  private boolean j;
  private ad k;
  private Handler l = new d(this);
  
  public c(Context paramContext)
  {
    this(paramContext, false);
  }
  
  public c(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, paramBoolean, false);
  }
  
  public c(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    b = paramContext;
    j = paramBoolean2;
    i = paramBoolean1;
    k = ad.a(b);
    e = u.a();
    h = new w(b);
    h.a(l);
    c();
  }
  
  private void a(String paramString)
  {
    if (paramString != null)
    {
      if (j) {
        k.f(System.currentTimeMillis());
      }
      if (e != null)
      {
        e.a(2);
        e.a(paramString);
      }
      a("pcs_temp_mode", paramString);
      if (!i) {
        ak.a(b, 2131231925, 0);
      }
    }
    while (c == null) {
      return;
    }
    c.a(false, null, null);
  }
  
  private void b(String paramString1, String paramString2)
  {
    k.h(paramString1, paramString2);
  }
  
  private void c()
  {
    LinearLayout localLinearLayout = (LinearLayout)k.a(b).inflate(2130903151, null);
    ((TextView)localLinearLayout.findViewById(2131624200)).setText(2131231924);
    a = new cv(b).a(2131231936).a(localLinearLayout).b();
    a.setOnDismissListener(new e(this));
    a.setCanceledOnTouchOutside(false);
  }
  
  private void d()
  {
    h.a();
  }
  
  public void a()
  {
    f = true;
    a.show();
    d();
    if ((com.estrongs.android.j.c.a(b) != null) && (!ad.a(FexApplication.a()).d())) {}
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    d = paramOnCancelListener;
    a.setOnCancelListener(paramOnCancelListener);
  }
  
  public void a(q paramq)
  {
    c = paramq;
  }
  
  public void a(String paramString1, String paramString2)
  {
    b(paramString1, paramString2);
    k.ag();
    if (c != null) {
      c.a(true, paramString1, paramString2);
    }
    try
    {
      paramString1 = FileExplorerActivity.X().O();
      paramString2 = ad.a(b);
      String str = ap.bW(paramString2.j(a.a));
      if ((paramString1 != null) && (paramString1.c() != null) && (ap.e(str, paramString1.c())) && (paramString2.o()) && (z.N)) {
        paramString1.b(true);
      }
      return;
    }
    catch (Exception paramString1) {}
  }
  
  public void b()
  {
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */