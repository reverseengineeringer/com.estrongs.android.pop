package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.q;

class hs
  implements DialogInterface.OnClickListener
{
  hs(hn paramhn, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    b.h.a = -1;
    b.h.c = l.g(a[paramInt]);
    if (!l.a(hn.d(b), b.h)) {
      ag.a(b.ar(), 2131427766, 0);
    }
    b.h = l.f(hn.d(b));
    b.a.setText(l.a(b.h.c));
    b.b.setText(l.b(b.h.b));
    b.g = hn.a(b, b.h);
    hn.e(b).setText(b.g.substring(0, 3) + " " + b.g.substring(3, 6) + " " + b.g.substring(6, 9));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */