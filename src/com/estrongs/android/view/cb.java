package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.widget.f;
import java.util.List;

class cb
  implements DialogInterface.OnClickListener
{
  cb(bx parambx, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.i();
    if (paramDialogInterface.size() == 0) {
      ak.a(b.ag, 2131231551, 0);
    }
    for (;;)
    {
      try
      {
        c.a(b.ag).a("encrypt_lb", "lp_encrypt");
        return;
      }
      catch (Exception paramDialogInterface)
      {
        paramDialogInterface.printStackTrace();
      }
      a.k();
      bx.a(b, (FileExplorerActivity)b.ag, paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */