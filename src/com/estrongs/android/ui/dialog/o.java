package com.estrongs.android.ui.dialog;

import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.b.c;

public class o
{
  protected c a = null;
  private t b = null;
  private FileExplorerActivity c;
  
  public o(FileExplorerActivity paramFileExplorerActivity, c paramc)
  {
    c = paramFileExplorerActivity;
    a = paramc;
    b = new t(this, paramFileExplorerActivity);
  }
  
  public void a()
  {
    View localView = b.aq();
    ct localct = new ct(localView.getContext()).a(2131427577);
    localct.a(localView);
    if (a.e()) {
      localct.f(2131428624, new p(this));
    }
    for (;;)
    {
      localct.e(2131427608, new r(this));
      localct.d(2131427340, new s(this));
      localct.c();
      return;
      localct.f(2131427368, new q(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */