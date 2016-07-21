package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;

final class bo
  implements p
{
  bo(cr paramcr, h paramh, Activity paramActivity) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (((paramInt2 == 5) || (paramInt2 == 4)) && (a != null))
    {
      if (!ap.aY(b.getPath())) {
        break label56;
      }
      ao.b(b);
      c.runOnUiThread(new bp(this));
    }
    label56:
    while ((!ap.bl(b.getPath())) || (b.getExtra("child_count") == null)) {
      return;
    }
    ao.a(b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */