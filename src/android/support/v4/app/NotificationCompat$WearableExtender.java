package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class NotificationCompat$WearableExtender
  implements NotificationCompat.Extender
{
  public static final int SCREEN_TIMEOUT_LONG = -1;
  public static final int SCREEN_TIMEOUT_SHORT = 0;
  public static final int SIZE_DEFAULT = 0;
  public static final int SIZE_FULL_SCREEN = 5;
  public static final int SIZE_LARGE = 4;
  public static final int SIZE_MEDIUM = 3;
  public static final int SIZE_SMALL = 2;
  public static final int SIZE_XSMALL = 1;
  public static final int UNSET_ACTION_INDEX = -1;
  private ArrayList<NotificationCompat.Action> a = new ArrayList();
  private int b = 1;
  private PendingIntent c;
  private ArrayList<Notification> d = new ArrayList();
  private Bitmap e;
  private int f;
  private int g = 8388613;
  private int h = -1;
  private int i = 0;
  private int j;
  private int k = 80;
  private int l;
  
  public NotificationCompat$WearableExtender() {}
  
  public NotificationCompat$WearableExtender(Notification paramNotification)
  {
    paramNotification = NotificationCompat.getExtras(paramNotification);
    if (paramNotification != null) {}
    for (paramNotification = paramNotification.getBundle("android.wearable.EXTENSIONS");; paramNotification = null)
    {
      if (paramNotification != null)
      {
        Object localObject = NotificationCompat.access$200().getActionsFromParcelableArrayList(paramNotification.getParcelableArrayList("actions"));
        if (localObject != null) {
          Collections.addAll(a, (Object[])localObject);
        }
        b = paramNotification.getInt("flags", 1);
        c = ((PendingIntent)paramNotification.getParcelable("displayIntent"));
        localObject = NotificationCompat.access$500(paramNotification, "pages");
        if (localObject != null) {
          Collections.addAll(d, (Object[])localObject);
        }
        e = ((Bitmap)paramNotification.getParcelable("background"));
        f = paramNotification.getInt("contentIcon");
        g = paramNotification.getInt("contentIconGravity", 8388613);
        h = paramNotification.getInt("contentActionIndex", -1);
        i = paramNotification.getInt("customSizePreset", 0);
        j = paramNotification.getInt("customContentHeight");
        k = paramNotification.getInt("gravity", 80);
        l = paramNotification.getInt("hintScreenTimeout");
      }
      return;
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b |= paramInt;
      return;
    }
    b &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public WearableExtender addAction(NotificationCompat.Action paramAction)
  {
    a.add(paramAction);
    return this;
  }
  
  public WearableExtender addActions(List<NotificationCompat.Action> paramList)
  {
    a.addAll(paramList);
    return this;
  }
  
  public WearableExtender addPage(Notification paramNotification)
  {
    d.add(paramNotification);
    return this;
  }
  
  public WearableExtender addPages(List<Notification> paramList)
  {
    d.addAll(paramList);
    return this;
  }
  
  public WearableExtender clearActions()
  {
    a.clear();
    return this;
  }
  
  public WearableExtender clearPages()
  {
    d.clear();
    return this;
  }
  
  public WearableExtender clone()
  {
    WearableExtender localWearableExtender = new WearableExtender();
    a = new ArrayList(a);
    b = b;
    c = c;
    d = new ArrayList(d);
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    l = l;
    return localWearableExtender;
  }
  
  public NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
  {
    Bundle localBundle = new Bundle();
    if (!a.isEmpty()) {
      localBundle.putParcelableArrayList("actions", NotificationCompat.access$200().getParcelableArrayListForActions((NotificationCompat.Action[])a.toArray(new NotificationCompat.Action[a.size()])));
    }
    if (b != 1) {
      localBundle.putInt("flags", b);
    }
    if (c != null) {
      localBundle.putParcelable("displayIntent", c);
    }
    if (!d.isEmpty()) {
      localBundle.putParcelableArray("pages", (Parcelable[])d.toArray(new Notification[d.size()]));
    }
    if (e != null) {
      localBundle.putParcelable("background", e);
    }
    if (f != 0) {
      localBundle.putInt("contentIcon", f);
    }
    if (g != 8388613) {
      localBundle.putInt("contentIconGravity", g);
    }
    if (h != -1) {
      localBundle.putInt("contentActionIndex", h);
    }
    if (i != 0) {
      localBundle.putInt("customSizePreset", i);
    }
    if (j != 0) {
      localBundle.putInt("customContentHeight", j);
    }
    if (k != 80) {
      localBundle.putInt("gravity", k);
    }
    if (l != 0) {
      localBundle.putInt("hintScreenTimeout", l);
    }
    paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
    return paramBuilder;
  }
  
  public List<NotificationCompat.Action> getActions()
  {
    return a;
  }
  
  public Bitmap getBackground()
  {
    return e;
  }
  
  public int getContentAction()
  {
    return h;
  }
  
  public int getContentIcon()
  {
    return f;
  }
  
  public int getContentIconGravity()
  {
    return g;
  }
  
  public boolean getContentIntentAvailableOffline()
  {
    return (b & 0x1) != 0;
  }
  
  public int getCustomContentHeight()
  {
    return j;
  }
  
  public int getCustomSizePreset()
  {
    return i;
  }
  
  public PendingIntent getDisplayIntent()
  {
    return c;
  }
  
  public int getGravity()
  {
    return k;
  }
  
  public boolean getHintAvoidBackgroundClipping()
  {
    return (b & 0x10) != 0;
  }
  
  public boolean getHintHideIcon()
  {
    return (b & 0x2) != 0;
  }
  
  public int getHintScreenTimeout()
  {
    return l;
  }
  
  public boolean getHintShowBackgroundOnly()
  {
    return (b & 0x4) != 0;
  }
  
  public List<Notification> getPages()
  {
    return d;
  }
  
  public boolean getStartScrollBottom()
  {
    return (b & 0x8) != 0;
  }
  
  public WearableExtender setBackground(Bitmap paramBitmap)
  {
    e = paramBitmap;
    return this;
  }
  
  public WearableExtender setContentAction(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public WearableExtender setContentIcon(int paramInt)
  {
    f = paramInt;
    return this;
  }
  
  public WearableExtender setContentIconGravity(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public WearableExtender setContentIntentAvailableOffline(boolean paramBoolean)
  {
    a(1, paramBoolean);
    return this;
  }
  
  public WearableExtender setCustomContentHeight(int paramInt)
  {
    j = paramInt;
    return this;
  }
  
  public WearableExtender setCustomSizePreset(int paramInt)
  {
    i = paramInt;
    return this;
  }
  
  public WearableExtender setDisplayIntent(PendingIntent paramPendingIntent)
  {
    c = paramPendingIntent;
    return this;
  }
  
  public WearableExtender setGravity(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  public WearableExtender setHintAvoidBackgroundClipping(boolean paramBoolean)
  {
    a(16, paramBoolean);
    return this;
  }
  
  public WearableExtender setHintHideIcon(boolean paramBoolean)
  {
    a(2, paramBoolean);
    return this;
  }
  
  public WearableExtender setHintScreenTimeout(int paramInt)
  {
    l = paramInt;
    return this;
  }
  
  public WearableExtender setHintShowBackgroundOnly(boolean paramBoolean)
  {
    a(4, paramBoolean);
    return this;
  }
  
  public WearableExtender setStartScrollBottom(boolean paramBoolean)
  {
    a(8, paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.WearableExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */