package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.ax;
import com.estrongs.fs.h;
import java.util.LinkedList;

class as
  implements DialogInterface.OnClickListener
{
  as(ak paramak, ax paramax, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.e();
    paramInt = c.H.indexOf(b);
    if ((paramInt > 0) && (a.d() == 1))
    {
      c.H.remove(paramInt);
      c.i.notifyDataSetChanged();
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */