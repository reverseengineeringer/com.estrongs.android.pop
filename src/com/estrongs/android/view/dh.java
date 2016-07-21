package com.estrongs.android.view;

import android.os.Parcelable;
import android.support.v7.widget.GridLayoutManager;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.al;
import com.estrongs.fs.h;
import java.util.HashMap;
import java.util.List;

class dh
  implements Runnable
{
  dh(dg paramdg, al paramal, List paramList) {}
  
  public void run()
  {
    synchronized (c.a.e)
    {
      c.a.e.remove(this);
      c.b.a(a, b);
      ??? = a.b.getPath();
      Parcelable localParcelable = (Parcelable)c.b.M.get(???);
      if ((localParcelable != null) && (bk.a(???, c.b.C))) {
        c.b.g.onRestoreInstanceState(localParcelable);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */