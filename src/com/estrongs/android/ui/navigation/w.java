package com.estrongs.android.ui.navigation;

import android.view.View;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.a;
import com.estrongs.android.util.am;

class w
  implements r
{
  w(t paramt, a parama) {}
  
  public void a(View paramView)
  {
    paramView = a.b();
    if ("#home#".equals(a.b())) {
      paramView = ad.a(s.a(b.c)).j("Market");
    }
    b.b.b(am.C(paramView));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */