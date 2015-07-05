package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cb;
import com.estrongs.fs.h;

class di
  extends com.estrongs.android.ui.c.a
{
  di(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void b(h paramh)
  {
    super.a(paramh);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    FexApplication localFexApplication = FexApplication.a();
    if ((am.bb(paramh.getAbsolutePath())) && (!am.bg(paramh.getAbsolutePath()))) {}
    for (int i = 1; (localFexApplication.h()) && (i != 0); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new dj(this, paramh));
      paramTypedMap.b();
      return;
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */