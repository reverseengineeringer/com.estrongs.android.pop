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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.di;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.android.ui.view.PcsThirdPartOAuth;
import com.estrongs.android.util.am;

public class bf
{
  cg a;
  private Context b;
  private View c;
  
  public bf(Context paramContext)
  {
    b = paramContext;
    c = ((LinearLayout)g.a(b).inflate(2130903274, null));
    paramContext = (GridView)c.findViewById(2131362817);
    paramContext.setAdapter(new com.estrongs.android.ui.a.b(b));
    paramContext.setOnItemClickListener(new bg(this));
    a = new ct(b).a(2131427361).a(c).b();
  }
  
  private void a(int paramInt, String paramString)
  {
    Object localObject = g.a(b).inflate(2130903133, null);
    cg localcg = new ct(b).a(paramString).a((View)localObject).c();
    localObject = (ListView)((View)localObject).findViewById(2131362074);
    String str1 = b.getString(2131428510);
    String str2 = b.getString(2131428511);
    ((ListView)localObject).setAdapter(new di(b, null, new String[] { str1, str2 }, 0, false));
    ((ListView)localObject).setOnItemClickListener(new bh(this, paramInt, paramString, localcg));
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      paramString2 = com.estrongs.fs.impl.j.b.f(paramString1, paramString2);
      if (paramString2 != null)
      {
        paramString1 = am.a(paramString1, paramString2, "fake", "/");
        ad.a(b).a(paramString1, paramString2);
        return true;
      }
    }
    return false;
  }
  
  private void b(int paramInt, String paramString)
  {
    bi localbi = new bi(this);
    j localj = new j(b, true, null);
    localj.a(localbi);
    localj.a(paramInt, paramString);
    localj.a(true);
  }
  
  private void c()
  {
    Intent localIntent = new Intent(b, PcsThirdPartOAuth.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("nettype", "pcs");
    localBundle.putString("ostype", "qq");
    localBundle.putBoolean("editServer", true);
    localIntent.putExtras(localBundle);
    ((Activity)b).startActivityForResult(localIntent, 16781341);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */