package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;

public final class NotificationCompat$Action$Builder
{
  private final int a;
  private final CharSequence b;
  private final PendingIntent c;
  private final Bundle d;
  private ArrayList<bw> e;
  
  public NotificationCompat$Action$Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle());
  }
  
  private NotificationCompat$Action$Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    a = paramInt;
    b = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    c = paramPendingIntent;
    d = paramBundle;
  }
  
  public NotificationCompat$Action$Builder(NotificationCompat.Action paramAction)
  {
    this(icon, title, actionIntent, new Bundle(NotificationCompat.Action.a(paramAction)));
  }
  
  public Builder addExtras(Bundle paramBundle)
  {
    if (paramBundle != null) {
      d.putAll(paramBundle);
    }
    return this;
  }
  
  public Builder addRemoteInput(bw parambw)
  {
    if (e == null) {
      e = new ArrayList();
    }
    e.add(parambw);
    return this;
  }
  
  public NotificationCompat.Action build()
  {
    if (e != null) {}
    for (bw[] arrayOfbw = (bw[])e.toArray(new bw[e.size()]);; arrayOfbw = null) {
      return new NotificationCompat.Action(a, b, c, d, arrayOfbw, null);
    }
  }
  
  public Builder extend(NotificationCompat.Action.Extender paramExtender)
  {
    paramExtender.extend(this);
    return this;
  }
  
  public Bundle getExtras()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */