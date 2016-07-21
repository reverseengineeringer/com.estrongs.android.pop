package com.estrongs.android.pop.app.analysis.b;

import android.view.View;
import com.estrongs.android.ui.addressbar.f;
import com.estrongs.android.util.l;

class r
  implements f
{
  r(q paramq) {}
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    l.b("analysisDir", " onclick address bar index = " + paramInt1 + " , count = " + paramInt2);
    if (paramInt1 < paramInt2 - 1) {
      q.a(a, paramInt1, q.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */