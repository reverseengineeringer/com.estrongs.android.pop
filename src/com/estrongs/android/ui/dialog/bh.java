package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.ea;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.view.PcsThirdPartOAuth;
import com.estrongs.android.util.ap;

public class bh
{
  ci a;
  private Context b;
  private View c;
  
  public bh(Context paramContext)
  {
    b = paramContext;
    c = ((LinearLayout)k.a(b).inflate(2130903467, null));
    paramContext = (GridView)c.findViewById(2131625655);
    paramContext.setAdapter(new com.estrongs.android.ui.adapter.b(b));
    paramContext.setOnItemClickListener(new bi(this));
    a = new cv(b).a(2131230867).a(c).b();
  }
  
  private void a(int paramInt, String paramString)
  {
    Object localObject = k.a(b).inflate(2130903240, null);
    ci localci = new cv(b).a(paramString).a((View)localObject).c();
    localObject = (ListView)((View)localObject).findViewById(2131624232);
    String str1 = b.getString(2131231061);
    String str2 = b.getString(2131231060);
    ((ListView)localObject).setAdapter(new ea(b, null, new String[] { str1, str2 }, 0, false));
    ((ListView)localObject).setOnItemClickListener(new bj(this, paramInt, paramString, localci));
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      paramString2 = com.estrongs.fs.impl.o.b.f(paramString1, paramString2);
      if (paramString2 != null)
      {
        paramString1 = ap.a(paramString1, paramString2, "fake", "/");
        ad.a(b).a(paramString1, paramString2);
        return true;
      }
    }
    return false;
  }
  
  private void b(int paramInt, String paramString)
  {
    bk localbk = new bk(this);
    l locall = new l(b, true, null);
    locall.a(localbk);
    locall.a(paramInt, paramString);
    locall.a(true);
  }
  
  private void c()
  {
    Intent localIntent = new Intent(b, PcsThirdPartOAuth.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("nettype", "pcs");
    localBundle.putString("ostype", "qq");
    localBundle.putBoolean("editServer", true);
    localIntent.putExtras(localBundle);
    ((Activity)b).startActivityForResult(localIntent, 4125);
  }
  
  public boolean a()
  {
    return (a != null) && (a.isShowing());
  }
  
  public void b()
  {
    a.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */