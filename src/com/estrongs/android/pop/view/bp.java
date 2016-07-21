package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.dw;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

class bp
  extends eb
{
  bp(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  public h j()
  {
    if (D == null) {}
    while ((ap.aX(D.getPath())) || (ap.aP(D.getPath())) || (ap.X(D.getPath()))) {
      return null;
    }
    return super.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */