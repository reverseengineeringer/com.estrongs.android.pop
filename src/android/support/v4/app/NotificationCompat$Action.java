package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public class NotificationCompat$Action
  extends NotificationCompatBase.Action
{
  public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompat.Action.1();
  private final Bundle a;
  public PendingIntent actionIntent;
  private final bw[] b;
  public int icon;
  public CharSequence title;
  
  public NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, bw[] paramArrayOfbw)
  {
    icon = paramInt;
    title = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    actionIntent = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      a = paramBundle;
      b = paramArrayOfbw;
      return;
      paramBundle = new Bundle();
    }
  }
  
  public PendingIntent getActionIntent()
  {
    return actionIntent;
  }
  
  public Bundle getExtras()
  {
    return a;
  }
  
  public int getIcon()
  {
    return icon;
  }
  
  public bw[] getRemoteInputs()
  {
    return b;
  }
  
  public CharSequence getTitle()
  {
    return title;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */