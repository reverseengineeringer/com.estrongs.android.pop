package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.BuilderExtender;
import android.support.v4.app.bv;

class NotificationCompat$LollipopExtender
  extends NotificationCompat.BuilderExtender
{
  public Notification build(NotificationCompat.Builder paramBuilder, bv parambv)
  {
    NotificationCompat.access$500(parambv, mStyle);
    return parambv.build();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.NotificationCompat.LollipopExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */