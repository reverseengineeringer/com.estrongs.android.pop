package android.support.v7.app;

import android.app.Notification.MediaStyle;
import android.media.session.MediaSession.Token;
import android.support.v4.app.bv;

class NotificationCompatImpl21
{
  public static void addMediaStyle(bv parambv, int[] paramArrayOfInt, Object paramObject)
  {
    parambv = new Notification.MediaStyle(parambv.getBuilder());
    if (paramArrayOfInt != null) {
      parambv.setShowActionsInCompactView(paramArrayOfInt);
    }
    if (paramObject != null) {
      parambv.setMediaSession((MediaSession.Token)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.NotificationCompatImpl21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */