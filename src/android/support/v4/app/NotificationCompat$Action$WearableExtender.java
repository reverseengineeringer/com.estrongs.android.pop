package android.support.v4.app;

import android.os.Bundle;

public final class NotificationCompat$Action$WearableExtender
  implements NotificationCompat.Action.Extender
{
  private int a = 1;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  
  public NotificationCompat$Action$WearableExtender() {}
  
  public NotificationCompat$Action$WearableExtender(NotificationCompat.Action paramAction)
  {
    paramAction = paramAction.getExtras().getBundle("android.wearable.EXTENSIONS");
    if (paramAction != null)
    {
      a = paramAction.getInt("flags", 1);
      b = paramAction.getCharSequence("inProgressLabel");
      c = paramAction.getCharSequence("confirmLabel");
      d = paramAction.getCharSequence("cancelLabel");
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a |= paramInt;
      return;
    }
    a &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public WearableExtender clone()
  {
    WearableExtender localWearableExtender = new WearableExtender();
    a = a;
    b = b;
    c = c;
    d = d;
    return localWearableExtender;
  }
  
  public NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder)
  {
    Bundle localBundle = new Bundle();
    if (a != 1) {
      localBundle.putInt("flags", a);
    }
    if (b != null) {
      localBundle.putCharSequence("inProgressLabel", b);
    }
    if (c != null) {
      localBundle.putCharSequence("confirmLabel", c);
    }
    if (d != null) {
      localBundle.putCharSequence("cancelLabel", d);
    }
    paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
    return paramBuilder;
  }
  
  public CharSequence getCancelLabel()
  {
    return d;
  }
  
  public CharSequence getConfirmLabel()
  {
    return c;
  }
  
  public CharSequence getInProgressLabel()
  {
    return b;
  }
  
  public boolean isAvailableOffline()
  {
    return (a & 0x1) != 0;
  }
  
  public WearableExtender setAvailableOffline(boolean paramBoolean)
  {
    a(1, paramBoolean);
    return this;
  }
  
  public WearableExtender setCancelLabel(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    return this;
  }
  
  public WearableExtender setConfirmLabel(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    return this;
  }
  
  public WearableExtender setInProgressLabel(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action.WearableExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */