package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.ImageCommentPostActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class gh
  implements MenuItem.OnMenuItemClickListener
{
  gh(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      return true;
      Intent localIntent = new Intent(cp.a(a), ImageCommentPostActivity.class);
      cp.a(a).a(localIntent, (h)paramMenuItem.get(0));
      cp.a(a).startActivity(localIntent);
      cp.a(a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */