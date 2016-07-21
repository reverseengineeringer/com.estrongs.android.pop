package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.cb;
import com.estrongs.io.archive.i;

class bc
  implements DialogInterface.OnClickListener
{
  bc(bb parambb, cb paramcb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a();
    if (b.a.e(paramDialogInterface))
    {
      b.b.c = paramDialogInterface;
      a.dismiss();
      ak.a(b.b, new bg(b.b));
      ak.d(b.b).start();
      return;
    }
    com.estrongs.android.ui.view.ak.a(b.b.ah, 2131231784, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */