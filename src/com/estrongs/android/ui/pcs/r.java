package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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

public class r
  extends y
{
  private SapiWebView d;
  private Context e;
  private boolean f = false;
  private String g;
  private ad h;
  private u i;
  private String j;
  private boolean k;
  private AuthorizationListener l = new s(this);
  private f m;
  
  public r(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public r(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    e = paramContext;
    h = ad.a(e);
    i = u.a();
    FexApplication.a(paramContext);
    a();
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      b(paramString1, paramString2);
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
  
  private void b(String paramString1, String paramString2)
  {
    if (!f) {
      h.h(paramString1, paramString2);
    }
  }
  
  private void f()
  {
    m = new f(e, this);
    m.b();
    m.a(b);
    m.show();
  }
  
  void a()
  {
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    show();
  }
  
  protected void b()
  {
    Object localObject = LayoutInflater.from(e);
    View localView = ((LayoutInflater)localObject).inflate(2130903302, null);
    localObject = ((LayoutInflater)localObject).inflate(2130903371, null);
    ((ViewGroup)((View)localObject).findViewById(2131624144)).addView(localView);
    setContentView((View)localObject);
    d = ((SapiWebView)localView.findViewById(2131625108));
    an.a(e, d);
    d.setOnFinishCallback(new t(this));
    d.setAuthorizationListener(l);
    setTitle(2131232267);
  }
  
  public void dismiss()
  {
    k = false;
    a(null, j);
    super.dismiss();
  }
  
  public void show()
  {
    k = true;
    d.loadRegist();
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */