package com.estrongs.android.ui.c.b;

import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.util.a;

class ag
  implements View.OnClickListener
{
  ag(u paramu, v[] paramArrayOfv) {}
  
  public void onClick(View paramView)
  {
    for (;;)
    {
      try
      {
        if (!w.a(a[0].f)) {
          continue;
        }
        paramView = b.a.getPackageManager().getLaunchIntentForPackage(a[0].f);
        if (paramView != null) {
          b.a.startActivity(paramView);
        }
      }
      catch (Exception paramView)
      {
        continue;
      }
      a.a("Home_Baidu_Security", "Home_Baidu_Security");
      a.b("Home_Baidu_Security_UV", "Home_Baidu_Security_UV");
      return;
      w.a(b.a, a[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */