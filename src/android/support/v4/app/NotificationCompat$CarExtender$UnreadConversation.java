package android.support.v4.app;

import android.app.PendingIntent;

public class NotificationCompat$CarExtender$UnreadConversation
  extends NotificationCompatBase.UnreadConversation
{
  static final NotificationCompatBase.UnreadConversation.Factory a = new NotificationCompat.CarExtender.UnreadConversation.1();
  private final String[] b;
  private final bw c;
  private final PendingIntent d;
  private final PendingIntent e;
  private final String[] f;
  private final long g;
  
  NotificationCompat$CarExtender$UnreadConversation(String[] paramArrayOfString1, bw parambw, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String[] paramArrayOfString2, long paramLong)
  {
    b = paramArrayOfString1;
    c = parambw;
    e = paramPendingIntent2;
    d = paramPendingIntent1;
    f = paramArrayOfString2;
    g = paramLong;
  }
  
  public long getLatestTimestamp()
  {
    return g;
  }
  
  public String[] getMessages()
  {
    return b;
  }
  
  public String getParticipant()
  {
    if (f.length > 0) {
      return f[0];
    }
    return null;
  }
  
  public String[] getParticipants()
  {
    return f;
  }
  
  public PendingIntent getReadPendingIntent()
  {
    return e;
  }
  
  public bw getRemoteInput()
  {
    return c;
  }
  
  public PendingIntent getReplyPendingIntent()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.CarExtender.UnreadConversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */