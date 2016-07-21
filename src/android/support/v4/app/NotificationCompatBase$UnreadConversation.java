package android.support.v4.app;

import android.app.PendingIntent;

public abstract class NotificationCompatBase$UnreadConversation
{
  abstract long getLatestTimestamp();
  
  abstract String[] getMessages();
  
  abstract String[] getParticipants();
  
  abstract PendingIntent getReadPendingIntent();
  
  abstract ce getRemoteInput();
  
  abstract PendingIntent getReplyPendingIntent();
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatBase.UnreadConversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */