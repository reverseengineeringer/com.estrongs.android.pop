package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.impl.local.r;

class hv
  implements DialogInterface.OnClickListener
{
  hv(hq paramhq, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    b.h.a = -1;
    b.h.c = m.g(a[paramInt]);
    if (!m.a(hq.g(b), b.h)) {
      ak.a(b.aF(), 2131231901, 0);
    }
    b.h = m.f(hq.g(b));
    b.a.setText(m.a(b.h.c));
    b.b.setText(m.b(b.h.b));
    b.g = hq.a(b, b.h);
    hq.h(b).setText(b.g.substring(0, 3) + " " + b.g.substring(3, 6) + " " + b.g.substring(6, 9));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */