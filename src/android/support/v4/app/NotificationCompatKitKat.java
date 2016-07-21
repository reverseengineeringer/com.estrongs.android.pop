package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.os.Bundle;
import android.util.SparseArray;

class NotificationCompatKitKat
{
  public static NotificationCompatBase.Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase.Action.Factory paramFactory, cf paramcf)
  {
    Notification.Action localAction = actions[paramInt];
    Object localObject = null;
    SparseArray localSparseArray = extras.getSparseParcelableArray("android.support.actionExtras");
    paramNotification = (Notification)localObject;
    if (localSparseArray != null) {
      paramNotification = (Bundle)localSparseArray.get(paramInt);
    }
    return NotificationCompatJellybean.readAction(paramFactory, paramcf, icon, title, actionIntent, paramNotification);
  }
  
  public static int getActionCount(Notification paramNotification)
  {
    if (actions != null) {
      return actions.length;
    }
    return 0;
  }
  
  public static Bundle getExtras(Notification paramNotification)
  {
    return extras;
  }
  
  public static String getGroup(Notification paramNotification)
  {
    return extras.getString("android.support.groupKey");
  }
  
  public static boolean getLocalOnly(Notification paramNotification)
  {
    return extras.getBoolean("android.support.localOnly");
  }
  
  public static String getSortKey(Notification paramNotification)
  {
    return extras.getString("android.support.sortKey");
  }
  
  public static boolean isGroupSummary(Notification paramNotification)
  {
    return extras.getBoolean("android.support.isGroupSummary");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatKitKat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */