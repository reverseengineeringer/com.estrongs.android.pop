package com.estrongs.android.widget;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.gs;
import com.estrongs.android.ui.dialog.gx;
import com.estrongs.fs.util.a.a;

class aa
  implements gx
{
  aa(z paramz, gs paramgs) {}
  
  public void a(int paramInt)
  {
    ad.a(g.d(b.a)).a(paramInt);
    a locala = ac.a(paramInt % 4, paramInt / 4);
    b.a.a(locala);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */