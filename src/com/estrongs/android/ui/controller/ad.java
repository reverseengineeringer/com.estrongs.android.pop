package com.estrongs.android.ui.controller;

import android.support.v7.widget.SearchView.OnQueryTextListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.cr;

class ad
  implements SearchView.OnQueryTextListener
{
  ad(h paramh) {}
  
  public boolean onQueryTextChange(String paramString)
  {
    if (!a.r()) {
      return true;
    }
    h.a(a, paramString);
    a.a.l(paramString);
    return true;
  }
  
  public boolean onQueryTextSubmit(String paramString)
  {
    cr localcr = a.a.O();
    if (localcr == null) {
      return false;
    }
    if ((paramString.length() == 0) && ("all".equals(localcr.aq())))
    {
      ak.a(a.a, 2131231616, 0);
      return true;
    }
    a.a.e(paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */