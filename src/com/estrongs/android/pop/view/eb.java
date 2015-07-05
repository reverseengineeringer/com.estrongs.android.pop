package com.estrongs.android.pop.view;

import com.estrongs.fs.h;
import com.estrongs.fs.i;

class eb
  implements i
{
  eb(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean a(h paramh)
  {
    return (!paramh.getName().startsWith(".")) || (FileExplorerActivity.g(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */