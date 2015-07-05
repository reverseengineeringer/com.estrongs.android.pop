package com.estrongs.android.view;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.guesture.ESGesturePanel;

class dv
  implements Runnable
{
  dv(dt paramdt) {}
  
  public void run()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity != null)
    {
      E.b = false;
      E.postInvalidate();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */