package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.ui.dialog.iw;

class bq
  implements Runnable
{
  bq(bo parambo, a parama) {}
  
  public void run()
  {
    Object localObject = (Long[])b.a.b(a.getTaskResult());
    localObject = new iw(b.a.a, localObject[0].longValue(), localObject[1].longValue());
    ((iw)localObject).setSingleButton(b.a.a.getString(2131427339), null);
    ((iw)localObject).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */