package com.estrongs.android.pop.app.analysis.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppRunner.a(b.getActivity(), a, a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */