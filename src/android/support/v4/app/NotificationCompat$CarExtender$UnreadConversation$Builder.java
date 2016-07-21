package android.support.v4.app;

import android.app.PendingIntent;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat$CarExtender$UnreadConversation$Builder
{
  private final List<String> a = new ArrayList();
  private final String b;
  private bw c;
  private PendingIntent d;
  private PendingIntent e;
  private long f;
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder(String paramString)
  {
    b = paramString;
  }
  
  public Builder addMessage(String paramString)
  {
    a.add(paramString);
    return this;
  }
  
  public NotificationCompat.CarExtender.UnreadConversation build()
  {
    String[] arrayOfString = (String[])a.toArray(new String[a.size()]);
    String str = b;
    bw localbw = c;
    PendingIntent localPendingIntent1 = e;
    PendingIntent localPendingIntent2 = d;
    long l = f;
    return new NotificationCompat.CarExtender.UnreadConversation(arrayOfString, localbw, localPendingIntent1, localPendingIntent2, new String[] { str }, l);
  }
  
  public Builder setLatestTimestamp(long paramLong)
  {
    f = paramLong;
    return this;
  }
  
  public Builder setReadPendingIntent(PendingIntent paramPendingIntent)
  {
    d = paramPendingIntent;
    return this;
  }
  
  public Builder setReplyAction(PendingIntent paramPendingIntent, bw parambw)
  {
    c = parambw;
    e = paramPendingIntent;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.CarExtender.UnreadConversation.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */