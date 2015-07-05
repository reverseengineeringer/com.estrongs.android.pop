package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cb;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import com.estrongs.fs.util.a.a;

class dp
  extends aw
{
  dp(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void b(h paramh)
  {
    super.a(paramh);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if ((am.bb(paramh.getAbsolutePath())) && (!am.bg(paramh.getAbsolutePath()))) {}
    for (int i = 1; (i != 0) && (FexApplication.a().h()); i = 0)
    {
      paramTypedMap = VerifyPasswordDialog.DialogType.NETWORK;
      paramTypedMap = VerifyPasswordDialog.a(a, paramTypedMap);
      paramTypedMap.a(new dq(this, paramh));
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
        ag.a(a, m(2131427851), 0);
        return;
      }
      if (!localg.b())
      {
        localg.a(new dr(this, localg, paramh));
        return;
      }
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */