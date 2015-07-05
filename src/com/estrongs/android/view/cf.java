package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.fs.h;

class cf
  implements DialogInterface.OnClickListener
{
  cf(ce paramce, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    j localj = new j(b.a.ad);
    localj.a(new cg(this));
    localj.show();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */