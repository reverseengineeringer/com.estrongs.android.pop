package com.estrongs.android.pop.app.analysis.b;

import android.view.View;
import com.estrongs.android.ui.addressbar.f;

class l
  implements f
{
  l(k paramk) {}
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    com.estrongs.android.util.l.b("analysisDir", " onclick address bar index = " + paramInt1 + " , count = " + paramInt2);
    if (paramInt1 < paramInt2 - 1) {
      k.a(a, paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */