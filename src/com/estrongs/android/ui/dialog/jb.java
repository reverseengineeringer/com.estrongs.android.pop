package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.android.ui.notification.e;
import java.util.Map;

class jb
  implements Runnable
{
  jb(ja paramja, a parama) {}
  
  public void run()
  {
    if ((!ix.j(b.a)) && (ix.i(b.a) != null))
    {
      ix.e.remove(Long.valueOf(a.getTaskId()));
      ix.i(b.a).a();
      ix.a(b.a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */