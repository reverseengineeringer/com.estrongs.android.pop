package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.Style;
import android.support.v4.app.bv;
import android.support.v4.media.session.MediaSessionCompat.Token;

public class NotificationCompat
  extends android.support.v4.app.NotificationCompat
{
  private static void addBigMediaStyleToBuilderJellybean(Notification paramNotification, NotificationCompat.Builder paramBuilder)
  {
    if ((mStyle instanceof NotificationCompat.MediaStyle))
    {
      NotificationCompat.MediaStyle localMediaStyle = (NotificationCompat.MediaStyle)mStyle;
      NotificationCompatImplBase.overrideBigContentView(paramNotification, mContext, mContentTitle, mContentText, mContentInfo, mNumber, mLargeIcon, mSubText, mUseChronometer, mNotification.when, mActions, mShowCancelButton, mCancelButtonIntent);
    }
  }
  
  private static void addMediaStyleToBuilderIcs(bv parambv, NotificationCompat.Builder paramBuilder)
  {
    if ((mStyle instanceof NotificationCompat.MediaStyle))
    {
      NotificationCompat.MediaStyle localMediaStyle = (NotificationCompat.MediaStyle)mStyle;
      NotificationCompatImplBase.overrideContentView(parambv, mContext, mContentTitle, mContentText, mContentInfo, mNumber, mLargeIcon, mSubText, mUseChronometer, mNotification.when, mActions, mActionsToShowInCompact, mShowCancelButton, mCancelButtonIntent);
    }
  }
  
  private static void addMediaStyleToBuilderLollipop(bv parambv, NotificationCompat.Style paramStyle)
  {
    int[] arrayOfInt;
    if ((paramStyle instanceof NotificationCompat.MediaStyle))
    {
      paramStyle = (NotificationCompat.MediaStyle)paramStyle;
      arrayOfInt = mActionsToShowInCompact;
      if (mToken == null) {
        break label39;
      }
    }
    label39:
    for (paramStyle = mToken.a();; paramStyle = null)
    {
      NotificationCompatImpl21.addMediaStyle(parambv, arrayOfInt, paramStyle);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.NotificationCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */