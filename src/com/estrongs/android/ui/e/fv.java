package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;
import org.json.JSONObject;

class fv
  implements MenuItem.OnMenuItemClickListener
{
  fv(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() > 0)
    {
      paramMenuItem = ((h)paramMenuItem.get(0)).getExtra("task");
      if ((paramMenuItem instanceof a))
      {
        paramMenuItem = am.bk(((a)paramMenuItem).summary().optString("target"));
        cp.a(a).e(paramMenuItem);
      }
    }
    cp.a(a).s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */