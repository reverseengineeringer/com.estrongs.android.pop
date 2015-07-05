package com.estrongs.android.ui.c.b;

import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;

class ad
  implements View.OnClickListener
{
  ad(u paramu) {}
  
  public void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      ag.a(a.a, 2131427932, 1);
      return;
    }
    a.a.d("du://" + b.b());
    a.a("Home_Disk", "Home_Disk");
    a.b("Home_Disk_UV", "Home_Disk_UV");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */