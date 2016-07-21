package com.estrongs.android.widget;

import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.fs.h;

class r
  implements Runnable
{
  r(q paramq, h paramh) {}
  
  public void run()
  {
    VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(f.d(b.b), VerifyPasswordDialog.DialogType.NETWORK);
    localVerifyPasswordDialog.a(new s(this));
    localVerifyPasswordDialog.a(new t(this));
    localVerifyPasswordDialog.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */