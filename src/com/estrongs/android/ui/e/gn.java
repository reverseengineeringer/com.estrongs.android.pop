package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.ImageCommentPostActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class gn
  implements MenuItem.OnMenuItemClickListener
{
  gn(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      return true;
      Intent localIntent = new Intent(cr.b(a), ImageCommentPostActivity.class);
      cr.b(a).a(localIntent, (h)paramMenuItem.get(0));
      cr.b(a).startActivity(localIntent);
      cr.b(a).B();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */