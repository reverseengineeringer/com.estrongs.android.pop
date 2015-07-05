package com.estrongs.android.ui.dialog;

import android.content.pm.ApplicationInfo;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import java.util.List;

class ac
  implements View.OnClickListener
{
  ac(ab paramab, ApplicationInfo paramApplicationInfo, String paramString) {}
  
  public void onClick(View paramView)
  {
    ad.a(c.c.mContext, a.packageName, b);
    c.a.remove(a);
    c.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */