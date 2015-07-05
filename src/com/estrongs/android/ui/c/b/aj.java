package com.estrongs.android.ui.c.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.widget.g;
import java.util.List;

class aj
  implements DialogInterface.OnClickListener
{
  aj(u paramu, g paramg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.i();
    if (paramDialogInterface.size() == 0)
    {
      ag.a(b.a, 2131427774, 0);
      return;
    }
    a.k();
    LocalFileSharingActivity.a(b.a, paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */