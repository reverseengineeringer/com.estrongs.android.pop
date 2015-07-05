package com.estrongs.android.widget;

import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.fs.h;

class s
  implements Runnable
{
  s(r paramr, h paramh) {}
  
  public void run()
  {
    VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(g.d(b.b), VerifyPasswordDialog.DialogType.NETWORK);
    localVerifyPasswordDialog.a(new t(this));
    localVerifyPasswordDialog.a(new u(this));
    localVerifyPasswordDialog.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */