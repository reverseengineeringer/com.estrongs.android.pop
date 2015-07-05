package com.estrongs.android.pop;

import com.estrongs.android.pop.app.b.m;
import com.estrongs.android.pop.app.b.o;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Observable;
import java.util.Observer;

public class ai
  implements Observer
{
  public void update(Observable paramObservable, Object paramObject)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if ((localFileExplorerActivity != null) && ((paramObservable instanceof m)) && ("smb://".equalsIgnoreCase(localFileExplorerActivity.z()))) {
      if ((paramObject == null) || (!(paramObject instanceof o))) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      localFileExplorerActivity.d(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */