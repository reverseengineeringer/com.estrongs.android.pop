package com.estrongs.android.pop.app.messagebox;

import android.os.Handler;
import android.os.Message;
import java.util.List;

class r
  implements Runnable
{
  r(MessageBoxActivity paramMessageBoxActivity) {}
  
  public void run()
  {
    List localList = MessageBoxActivity.b(a).a(-1);
    MessageBoxActivity.c(a).obtainMessage(2, localList).sendToTarget();
    MessageBoxActivity.d(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */