package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.NaviListView;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import java.util.List;
import java.util.Map;

public class cy
{
  com.estrongs.android.ui.a.g a;
  private cg b;
  private Context c;
  
  public cy(Context paramContext, Map<String, String> paramMap, Map<String, Drawable> paramMap1)
  {
    c = paramContext;
    a(paramMap, paramMap1);
  }
  
  private void a(Map<String, String> paramMap, Map<String, Drawable> paramMap1)
  {
    View localView = com.estrongs.android.pop.esclasses.g.a(c).inflate(2130903098, null);
    NaviListView localNaviListView = (NaviListView)localView.findViewById(2131362074);
    cz localcz = new cz(this, localNaviListView);
    a = new com.estrongs.android.ui.a.g(c, localcz, paramMap, paramMap1);
    localNaviListView.setAdapter(a);
    localNaviListView.setItemsCanFocus(true);
    localNaviListView.setOnGroupClickListener(new da(this));
    b = new ct(c).a(localView).a(2131428452).b();
  }
  
  public void a()
  {
    b.show();
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    b.setOnDismissListener(paramOnDismissListener);
  }
  
  public boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str = paramString;
    if (!am.t(paramString))
    {
      str = paramString;
      if (!paramString.endsWith("/"))
      {
        str = paramString;
        if (!paramString.endsWith("#")) {
          str = paramString + "/";
        }
      }
    }
    paramString = ad.a(c).M();
    if (paramString.size() >= 12)
    {
      ag.a(c, 2131428176, 1);
      return false;
    }
    if (paramString.contains(str))
    {
      ag.a(c, 2131428454, 1);
      return false;
    }
    paramString.add(str);
    ad.a(c).f(paramString);
    return true;
  }
  
  public void b()
  {
    b.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */