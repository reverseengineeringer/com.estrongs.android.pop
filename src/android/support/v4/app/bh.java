package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;

public abstract interface bh
  extends IInterface
{
  public abstract void cancel(String paramString1, int paramInt, String paramString2);
  
  public abstract void cancelAll(String paramString);
  
  public abstract void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification);
}

/* Location:
 * Qualified Name:     android.support.v4.app.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */