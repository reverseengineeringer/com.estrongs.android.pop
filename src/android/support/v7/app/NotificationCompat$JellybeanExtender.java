package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.BuilderExtender;
import android.support.v4.app.bv;

class NotificationCompat$JellybeanExtender
  extends NotificationCompat.BuilderExtender
{
  public Notification build(NotificationCompat.Builder paramBuilder, bv parambv)
  {
    NotificationCompat.access$300(parambv, paramBuilder);
    parambv = parambv.build();
    NotificationCompat.access$400(parambv, paramBuilder);
    return parambv;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.NotificationCompat.JellybeanExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */