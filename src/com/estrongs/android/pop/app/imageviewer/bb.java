package com.estrongs.android.pop.app.imageviewer;

import android.net.Uri;
import com.estrongs.android.ui.view.ag;

class bb
  implements Runnable
{
  bb(ba paramba) {}
  
  public void run()
  {
    String str2 = a.a.getString(2131427930);
    String str1 = str2;
    if (!ViewImage21.a(a.a, ViewImage21.q(a.a))) {
      str1 = str2 + ": " + ViewImage21.q(a.a).getPath();
    }
    ag.a(a.a, str1, 1);
    a.a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */