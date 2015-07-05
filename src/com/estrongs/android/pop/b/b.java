package com.estrongs.android.pop.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.Set;

final class b
  implements DialogInterface.OnClickListener
{
  b(String paramString, Runnable paramRunnable, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.a().add(a);
    if (b != null) {
      c.runOnUiThread(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */