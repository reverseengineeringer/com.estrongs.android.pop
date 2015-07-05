package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Handler;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;

public class a
{
  private cg a;
  private Context b;
  private n c;
  private DialogInterface.OnCancelListener d;
  private r e;
  private boolean f = false;
  private String g = null;
  private t h;
  private boolean i;
  private boolean j;
  private ad k;
  private Handler l = new b(this);
  
  public a(Context paramContext)
  {
    this(paramContext, false);
  }
  
  public a(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, paramBoolean, false);
  }
  
  public a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    b = paramContext;
    j = paramBoolean2;
    i = paramBoolean1;
    k = ad.a(b);
    e = r.a();
    h = new t(b);
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
        ag.a(b, 2131428600, 0);
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
    LinearLayout localLinearLayout = (LinearLayout)g.a(b).inflate(2130903077, null);
    ((TextView)localLinearLayout.findViewById(2131361822)).setText(2131428599);
    a = new ct(b).a(2131428555).a(localLinearLayout).b();
    a.setOnDismissListener(new c(this));
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
    com.estrongs.android.util.a locala = com.estrongs.android.util.a.a();
    if ((locala != null) && (!ad.a(FexApplication.a()).c())) {
      locala.c("Press_Direct", "Press_Direct");
    }
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    d = paramOnCancelListener;
    a.setOnCancelListener(paramOnCancelListener);
  }
  
  public void a(n paramn)
  {
    c = paramn;
  }
  
  public void a(String paramString1, String paramString2)
  {
    b(paramString1, paramString2);
    k.af();
    if (c != null) {
      c.a(true, paramString1, paramString2);
    }
    try
    {
      paramString1 = FileExplorerActivity.J().y();
      paramString2 = ad.a(b);
      String str = am.bF(paramString2.j("Market"));
      if ((paramString1 != null) && (paramString1.c() != null) && (am.e(str, paramString1.c())) && (paramString2.n()) && (z.N)) {
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
 * Qualified Name:     com.estrongs.android.ui.pcs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */