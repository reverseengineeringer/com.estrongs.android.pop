package android.support.v4.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class NotificationCompat$CarExtender
  implements NotificationCompat.Extender
{
  private Bitmap a;
  private NotificationCompat.CarExtender.UnreadConversation b;
  private int c = 0;
  
  public NotificationCompat$CarExtender() {}
  
  public NotificationCompat$CarExtender(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (;;)
    {
      return;
      if (NotificationCompat.getExtras(paramNotification) == null) {}
      for (paramNotification = null; paramNotification != null; paramNotification = NotificationCompat.getExtras(paramNotification).getBundle("android.car.EXTENSIONS"))
      {
        a = ((Bitmap)paramNotification.getParcelable("large_icon"));
        c = paramNotification.getInt("app_color", 0);
        paramNotification = paramNotification.getBundle("car_conversation");
        b = ((NotificationCompat.CarExtender.UnreadConversation)NotificationCompat.access$200().getUnreadConversationFromBundle(paramNotification, NotificationCompat.CarExtender.UnreadConversation.a, bw.a));
        return;
      }
    }
  }
  
  public NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
  {
    if (Build.VERSION.SDK_INT < 21) {
      return paramBuilder;
    }
    Bundle localBundle = new Bundle();
    if (a != null) {
      localBundle.putParcelable("large_icon", a);
    }
    if (c != 0) {
      localBundle.putInt("app_color", c);
    }
    if (b != null) {
      localBundle.putBundle("car_conversation", NotificationCompat.access$200().getBundleForUnreadConversation(b));
    }
    paramBuilder.getExtras().putBundle("android.car.EXTENSIONS", localBundle);
    return paramBuilder;
  }
  
  public int getColor()
  {
    return c;
  }
  
  public Bitmap getLargeIcon()
  {
    return a;
  }
  
  public NotificationCompat.CarExtender.UnreadConversation getUnreadConversation()
  {
    return b;
  }
  
  public CarExtender setColor(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public CarExtender setLargeIcon(Bitmap paramBitmap)
  {
    a = paramBitmap;
    return this;
  }
  
  public CarExtender setUnreadConversation(NotificationCompat.CarExtender.UnreadConversation paramUnreadConversation)
  {
    b = paramUnreadConversation;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.CarExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */