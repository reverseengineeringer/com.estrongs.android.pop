package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;

public class NotificationCompatBase
{
  public static Notification add(Notification paramNotification, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, PendingIntent paramPendingIntent)
  {
    paramNotification.setLatestEventInfo(paramContext, paramCharSequence1, paramCharSequence2, paramPendingIntent);
    return paramNotification;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */