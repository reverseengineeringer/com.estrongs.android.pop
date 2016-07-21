package com.estrongs.android.widget;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.gv;
import com.estrongs.android.ui.dialog.ha;
import com.estrongs.fs.util.a.a;

class z
  implements ha
{
  z(y paramy, gv paramgv) {}
  
  public void a(int paramInt)
  {
    ad.a(f.d(b.a)).a(paramInt);
    a locala = ac.a(paramInt % 4, paramInt / 4);
    b.a.a(locala);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */