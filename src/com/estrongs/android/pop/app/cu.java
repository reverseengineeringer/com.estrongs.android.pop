package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class cu
  implements MenuItem.OnMenuItemClickListener
{
  cu(GestureManageActivity paramGestureManageActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.setResult(-1);
    a.finish();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */