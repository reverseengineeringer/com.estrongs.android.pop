package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.dw;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

class bf
  extends e
{
  bf(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(h paramh)
  {
    super.c(paramh);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    FexApplication localFexApplication = FexApplication.a();
    if ((ap.bm(paramh.getAbsolutePath())) && (!ap.br(paramh.getAbsolutePath()))) {}
    for (int i = 1; (localFexApplication.h()) && (i != 0); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new bg(this, paramh));
      paramTypedMap.b();
      return;
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */