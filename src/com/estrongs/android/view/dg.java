package com.estrongs.android.view;

import android.os.Handler;
import com.estrongs.a.p;
import com.estrongs.fs.b.al;
import com.estrongs.fs.b.am;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class dg
  implements am
{
  dg(cr paramcr, dp paramdp) {}
  
  public void a(al arg1, List<h> paramList)
  {
    if (getTaskResulta == 1) {
      return;
    }
    if (a.e == null) {
      a.e = new ArrayList();
    }
    paramList = new dh(this, ???, paramList);
    synchronized (a.e)
    {
      a.e.add(paramList);
      b.W.post(paramList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */