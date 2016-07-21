package com.estrongs.android.pop;

import com.estrongs.android.pop.app.f.m;
import com.estrongs.android.pop.app.f.o;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Observable;
import java.util.Observer;

public class aj
  implements Observer
{
  public void update(Observable paramObservable, Object paramObject)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if ((localFileExplorerActivity != null) && ((paramObservable instanceof m)) && ("smb://".equalsIgnoreCase(localFileExplorerActivity.P()))) {
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
 * Qualified Name:     com.estrongs.android.pop.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */