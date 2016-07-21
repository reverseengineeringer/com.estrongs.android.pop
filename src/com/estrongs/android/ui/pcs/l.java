package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;

public class l
  extends y
{
  private SapiWebView d;
  private Context e;
  private boolean f;
  private String g;
  private ad h;
  private u i;
  private String j;
  private boolean k;
  private String l;
  private AuthorizationListener m = new m(this);
  
  public l(Context paramContext)
  {
    this(paramContext, false, null);
  }
  
  public l(Context paramContext, boolean paramBoolean, String paramString)
  {
    super(paramContext);
    FexApplication.a(paramContext);
    e = paramContext;
    f = paramBoolean;
    g = paramString;
    h = ad.a(e);
    i = u.a();
    a();
  }
  
  private void b(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      c(paramString1, paramString2);
      h.ah();
      if (b != null) {
        b.a(true, paramString1, paramString2);
      }
      if (c.a(e) == null) {}
    }
    do
    {
      try
      {
        paramString1 = FileExplorerActivity.X().O();
        paramString2 = ad.a(e);
        String str = ap.bW(paramString2.j(a.a));
        if ((paramString1 != null) && (paramString1.c() != null) && (ap.e(str, paramString1.c())) && (paramString2.o()) && (z.N)) {
          paramString1.b(true);
        }
        return;
      }
      catch (Exception paramString1) {}
    } while (b == null);
    b.a(false, null, null);
    return;
  }
  
  private void b(boolean paramBoolean)
  {
    k = false;
    if (paramBoolean) {
      b(null, j);
    }
    super.dismiss();
  }
  
  private void c(String paramString1, String paramString2)
  {
    if (!f) {
      h.h(paramString1, paramString2);
    }
  }
  
  void a()
  {
    b();
  }
  
  public void a(int paramInt1, Intent paramIntent, int paramInt2)
  {
    d.onAuthorizedResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1001)
    {
      if (paramInt2 == 1001) {
        m.onSuccess();
      }
      if (paramInt2 == 1002) {
        m.onFailed(paramIntent.getIntExtra("result_code", -100), paramIntent.getStringExtra("result_msg"));
      }
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    if ((f) && (paramString != null)) {
      setTitle(paramString);
    }
  }
  
  public void a(q paramq)
  {
    b = paramq;
  }
  
  public void a(String paramString1, String paramString2)
  {
    l = paramString2;
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    show();
  }
  
  public void a(boolean paramBoolean)
  {
    d.loadLogin();
    show();
  }
  
  protected void b()
  {
    View localView = LayoutInflater.from(e).inflate(2130903302, null);
    LinearLayout localLinearLayout = new LinearLayout(e);
    localLinearLayout.addView(localView, new ViewGroup.LayoutParams(-2, -2));
    setContentView(localLinearLayout);
    d = ((SapiWebView)localView.findViewById(2131625108));
    an.a(e, d);
    d.setOnBackCallback(new n(this));
    d.setOnFinishCallback(new o(this));
    d.setSocialLoginHandler(new p(this));
    d.setAuthorizationListener(m);
    setTitle(2131230863);
  }
  
  public void dismiss()
  {
    b(true);
  }
  
  public void setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void show()
  {
    k = true;
    d.loadLogin();
    i.a(this);
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */