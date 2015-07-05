package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.a.a;

class kd
  implements Runnable
{
  kd(kb paramkb, a parama) {}
  
  public void run()
  {
    Object localObject = (Long[])b.a.b(a.getTaskResult());
    localObject = new iw(b.a.getContext(), localObject[0].longValue(), localObject[1].longValue());
    ((iw)localObject).setSingleButton(b.a.getContext().getString(2131427339), null);
    ((iw)localObject).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */