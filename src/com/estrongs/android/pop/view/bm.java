package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import com.estrongs.fs.util.a.a;

class bm
  extends cr
{
  bm(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(h paramh)
  {
    super.c(paramh);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if ((ap.bm(paramh.getAbsolutePath())) && (!ap.br(paramh.getAbsolutePath()))) {}
    for (int i = 1; (i != 0) && (FexApplication.a().h()); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new bn(this, paramh));
      paramTypedMap.b();
      return;
    }
    if (paramh.getAbsolutePath().startsWith("usb://"))
    {
      if (e.b() == null) {
        e.a();
      }
      g localg = e.b(paramh.getAbsolutePath());
      if (localg == null)
      {
        ak.a(a, k(2131231465), 0);
        return;
      }
      if (!localg.b())
      {
        localg.a(new bo(this, localg, paramh));
        return;
      }
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */