package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;

final class bg
  implements p
{
  bg(Activity paramActivity, aw paramaw, h paramh) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (((paramInt2 == 5) || (paramInt2 == 4)) && ((a instanceof FileExplorerActivity)) && (b != null))
    {
      if (!am.aO(c.getPath())) {
        break label66;
      }
      aj.b(c);
      a.runOnUiThread(new bh(this));
    }
    label66:
    while ((!am.ba(c.getPath())) || (c.getExtra("child_count") == null)) {
      return;
    }
    aj.a(c);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */