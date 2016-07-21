package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.g;
import com.estrongs.android.ui.view.NaviListView;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import java.util.List;
import java.util.Map;

public class da
{
  g a;
  private ci b;
  private Context c;
  
  public da(Context paramContext, Map<String, String> paramMap, Map<String, Integer> paramMap1)
  {
    c = paramContext;
    a(paramMap, paramMap1);
  }
  
  private void a(Map<String, String> paramMap, Map<String, Integer> paramMap1)
  {
    View localView = k.a(c).inflate(2130903186, null);
    NaviListView localNaviListView = (NaviListView)localView.findViewById(2131624232);
    db localdb = new db(this, localNaviListView);
    a = new g(c, localdb, paramMap, paramMap1);
    localNaviListView.setAdapter(a);
    localNaviListView.setItemsCanFocus(true);
    localNaviListView.setOnGroupClickListener(new dc(this));
    b = new cv(c).a(localView).a(2131231310).b();
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
    if (!ap.v(paramString))
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
    paramString = ad.a(c).N();
    if (paramString.size() >= 12)
    {
      ak.a(c, 2131232453, 1);
      return false;
    }
    if (paramString.contains(str))
    {
      ak.a(c, 2131231783, 1);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */