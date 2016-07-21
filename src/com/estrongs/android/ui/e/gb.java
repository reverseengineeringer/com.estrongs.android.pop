package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;
import org.json.JSONObject;

class gb
  implements MenuItem.OnMenuItemClickListener
{
  gb(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() > 0)
    {
      paramMenuItem = ((h)paramMenuItem.get(0)).getExtra("task");
      if ((paramMenuItem instanceof a))
      {
        paramMenuItem = ap.bB(((a)paramMenuItem).summary().optString("target"));
        cr.b(a).g(paramMenuItem);
      }
    }
    cr.b(a).B();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */