package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.MultiWindowActivity;

class ao
  implements MenuItem.OnMenuItemClickListener
{
  ao(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (FileExplorerActivity.X() != null) {
      m.a(a).startActivity(new Intent(m.a(a), MultiWindowActivity.class));
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */