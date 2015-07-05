package com.estrongs.android.ui.drag;

import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;

class q
  implements p
{
  q(DragWindowView paramDragWindowView, String paramString) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {
      DragWindowView.a(b).runOnUiThread(new r(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */