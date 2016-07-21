package android.support.design.widget;

import android.os.Handler.Callback;
import android.os.Message;

final class bb
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    case 0: 
      ((Snackbar)obj).c();
      return true;
    }
    ((Snackbar)obj).b(arg1);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */