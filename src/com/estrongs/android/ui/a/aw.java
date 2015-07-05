package com.estrongs.android.ui.a;

import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.util.a;

class aw
  implements View.OnClickListener
{
  aw(aa paramaa, v paramv) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if (w.a(a.f))
      {
        paramView = aa.a(b).getPackageManager().getLaunchIntentForPackage(a.f);
        if (paramView != null) {
          aa.a(b).startActivity(paramView);
        }
      }
      for (;;)
      {
        a.a("Sidebar_Baidu_Security", "Sidebar_Baidu_Security");
        a.b("Sidebar_Baidu_Security_UV", "Sidebar_Baidu_Security_UV");
        return;
        w.a(aa.a(b), a);
      }
      return;
    }
    catch (Exception paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */