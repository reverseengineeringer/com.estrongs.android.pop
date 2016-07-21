package com.estrongs.android.pop.utils;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.List;

class bz
  implements CompoundButton.OnCheckedChangeListener
{
  bz(bv parambv, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, int paramInt, ci paramci, String paramString, List paramList, a parama, boolean paramBoolean5, boolean paramBoolean6, TextView paramTextView) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool1 = true;
    int n = bv.a(m, a, b, c, d, e, paramBoolean);
    f.setTitle(n);
    if (g == null)
    {
      paramCompoundButton = (h)h.get(0);
      if (h.size() != 1) {
        break label148;
      }
    }
    for (;;)
    {
      boolean bool2 = paramCompoundButton.getFileType().a();
      m.b = bv.a(m, i, h, j, a, b, c, paramCompoundButton, bool1, bool2, k, paramBoolean);
      l.setText(m.b);
      return;
      label148:
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */