package com.estrongs.android.view;

import android.os.Handler;
import com.estrongs.a.p;
import com.estrongs.fs.b.aj;
import com.estrongs.fs.b.ak;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class bo
  implements ak
{
  bo(aw paramaw, bu parambu) {}
  
  public void a(aj arg1, List<h> paramList)
  {
    if (getTaskResulta == 1) {
      return;
    }
    if (a.e == null) {
      a.e = new ArrayList();
    }
    paramList = new bp(this, ???, paramList);
    synchronized (a.e)
    {
      a.e.add(paramList);
      b.T.post(paramList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */