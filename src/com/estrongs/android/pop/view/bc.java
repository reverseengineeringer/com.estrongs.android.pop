package com.estrongs.android.pop.view;

import com.estrongs.fs.h;
import com.estrongs.fs.i;

class bc
  implements i
{
  bc(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean a(h paramh)
  {
    if (FileExplorerActivity.e(a)) {}
    while ((paramh.getName() == null) || (!paramh.getName().startsWith("."))) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */