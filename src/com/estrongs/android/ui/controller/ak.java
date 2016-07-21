package com.estrongs.android.ui.controller;

import android.widget.ProgressBar;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.view.cr;

class ak
  implements Runnable
{
  ak(aj paramaj, boolean paramBoolean) {}
  
  public void run()
  {
    if (b.i != null) {
      b.i.setIsLoading(a);
    }
    while (aj.a(b) == null)
    {
      localObject = b.a.O();
      if (localObject != null) {
        ((cr)localObject).j(a);
      }
      return;
    }
    Object localObject = aj.a(b);
    if (a) {}
    for (int i = 0;; i = 8)
    {
      ((ProgressBar)localObject).setVisibility(i);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */