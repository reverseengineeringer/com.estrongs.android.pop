package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;

public class o
  extends v
{
  private SapiWebView d;
  private Context e;
  private boolean f = false;
  private String g;
  private ad h;
  private r i;
  private String j;
  private boolean k;
  private AuthorizationListener l = new p(this);
  private d m;
  
  public o(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public o(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    e = paramContext;
    h = ad.a(e);
    i = r.a();
    FexApplication.a(paramContext);
    a();
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      b(paramString1, paramString2);
      h.ag();
      if (b != null) {
        b.a(true, paramString1, paramString2);
      }
      paramString1 = a.a();
      if (paramString1 != null) {
        paramString1.e("Normal_Login", "Normal_Login");
      }
    }
    do
    {
      try
      {
        paramString1 = FileExplorerActivity.J().y();
        paramString2 = ad.a(e);
        String str = am.bF(paramString2.j("Market"));
        if ((paramString1 != null) && (paramString1.c() != null) && (am.e(str, paramString1.c())) && (paramString2.n()) && (z.N)) {
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
    m = new d(e, this);
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
    View localView = ((LayoutInflater)localObject).inflate(2130903185, null);
    localObject = ((LayoutInflater)localObject).inflate(2130903210, null);
    ((ViewGroup)((View)localObject).findViewById(2131362347)).addView(localView);
    setContentView((View)localObject);
    d = ((SapiWebView)localView.findViewById(2131362469));
    ak.a(e, d);
    d.setOnFinishCallback(new q(this));
    d.setAuthorizationListener(l);
    setTitle(2131427901);
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
 * Qualified Name:     com.estrongs.android.ui.pcs.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */