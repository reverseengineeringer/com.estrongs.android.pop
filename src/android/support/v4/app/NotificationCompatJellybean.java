package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class NotificationCompatJellybean
{
  public static final String TAG = "NotificationCompat";
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  private static Class<?> e;
  private static Field f;
  private static Field g;
  private static Field h;
  private static Field i;
  private static boolean j;
  
  private static Bundle a(NotificationCompatBase.Action paramAction)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("icon", paramAction.getIcon());
    localBundle.putCharSequence("title", paramAction.getTitle());
    localBundle.putParcelable("actionIntent", paramAction.getActionIntent());
    localBundle.putBundle("extras", paramAction.getExtras());
    localBundle.putParcelableArray("remoteInputs", cg.a(paramAction.getRemoteInputs()));
    return localBundle;
  }
  
  private static NotificationCompatBase.Action a(Bundle paramBundle, NotificationCompatBase.Action.Factory paramFactory, cf paramcf)
  {
    return paramFactory.build(paramBundle.getInt("icon"), paramBundle.getCharSequence("title"), (PendingIntent)paramBundle.getParcelable("actionIntent"), paramBundle.getBundle("extras"), cg.a(z.a(paramBundle, "remoteInputs"), paramcf));
  }
  
  private static boolean a()
  {
    boolean bool = true;
    if (j) {
      return false;
    }
    try
    {
      if (f == null)
      {
        e = Class.forName("android.app.Notification$Action");
        g = e.getDeclaredField("icon");
        h = e.getDeclaredField("title");
        i = e.getDeclaredField("actionIntent");
        f = Notification.class.getDeclaredField("actions");
        f.setAccessible(true);
      }
      if (!j) {
        return bool;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", localClassNotFoundException);
        j = true;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", localNoSuchFieldException);
        j = true;
        continue;
        bool = false;
      }
    }
  }
  
  private static Object[] a(Notification paramNotification)
  {
    synchronized (d)
    {
      if (!a()) {
        return null;
      }
    }
    return null;
  }
  
  public static void addBigPictureStyle(bv parambv, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    parambv = new Notification.BigPictureStyle(parambv.getBuilder()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      parambv.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      parambv.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void addBigTextStyle(bv parambv, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    parambv = new Notification.BigTextStyle(parambv.getBuilder()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      parambv.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void addInboxStyle(bv parambv, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    parambv = new Notification.InboxStyle(parambv.getBuilder()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      parambv.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      parambv.addLine((CharSequence)paramCharSequence1.next());
    }
  }
  
  public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      Bundle localBundle = (Bundle)paramList.get(k);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(k, localBundle);
      }
      k += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
  
  public static NotificationCompatBase.Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase.Action.Factory paramFactory, cf paramcf)
  {
    for (;;)
    {
      synchronized (d)
      {
        try
        {
          Object localObject2 = a(paramNotification)[paramInt];
          paramNotification = getExtras(paramNotification);
          if (paramNotification != null)
          {
            paramNotification = paramNotification.getSparseParcelableArray("android.support.actionExtras");
            if (paramNotification != null)
            {
              paramNotification = (Bundle)paramNotification.get(paramInt);
              paramNotification = readAction(paramFactory, paramcf, g.getInt(localObject2), (CharSequence)h.get(localObject2), (PendingIntent)i.get(localObject2), paramNotification);
              return paramNotification;
            }
          }
        }
        catch (IllegalAccessException paramNotification)
        {
          Log.e("NotificationCompat", "Unable to access notification actions", paramNotification);
          j = true;
          return null;
        }
      }
      paramNotification = null;
    }
  }
  
  public static int getActionCount(Notification paramNotification)
  {
    for (;;)
    {
      synchronized (d)
      {
        paramNotification = a(paramNotification);
        if (paramNotification != null)
        {
          k = paramNotification.length;
          return k;
        }
      }
      int k = 0;
    }
  }
  
  public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList, NotificationCompatBase.Action.Factory paramFactory, cf paramcf)
  {
    if (paramArrayList == null) {
      return null;
    }
    NotificationCompatBase.Action[] arrayOfAction = paramFactory.newArray(paramArrayList.size());
    int k = 0;
    while (k < arrayOfAction.length)
    {
      arrayOfAction[k] = a((Bundle)paramArrayList.get(k), paramFactory, paramcf);
      k += 1;
    }
    return arrayOfAction;
  }
  
  public static Bundle getExtras(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (a)
    {
      if (c) {
        return null;
      }
    }
  }
  
  public static String getGroup(Notification paramNotification)
  {
    return getExtras(paramNotification).getString("android.support.groupKey");
  }
  
  public static boolean getLocalOnly(Notification paramNotification)
  {
    return getExtras(paramNotification).getBoolean("android.support.localOnly");
  }
  
  public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] paramArrayOfAction)
  {
    Object localObject;
    if (paramArrayOfAction == null)
    {
      localObject = null;
      return (ArrayList<Parcelable>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfAction.length);
    int m = paramArrayOfAction.length;
    int k = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (k >= m) {
        break;
      }
      localArrayList.add(a(paramArrayOfAction[k]));
      k += 1;
    }
  }
  
  public static String getSortKey(Notification paramNotification)
  {
    return getExtras(paramNotification).getString("android.support.sortKey");
  }
  
  public static boolean isGroupSummary(Notification paramNotification)
  {
    return getExtras(paramNotification).getBoolean("android.support.isGroupSummary");
  }
  
  public static NotificationCompatBase.Action readAction(NotificationCompatBase.Action.Factory paramFactory, cf paramcf, int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    ce[] arrayOfce = null;
    if (paramBundle != null) {
      arrayOfce = cg.a(z.a(paramBundle, "android.support.remoteInputs"), paramcf);
    }
    return paramFactory.build(paramInt, paramCharSequence, paramPendingIntent, paramBundle, arrayOfce);
  }
  
  public static Bundle writeActionAndGetExtras(Notification.Builder paramBuilder, NotificationCompatBase.Action paramAction)
  {
    paramBuilder.addAction(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
    paramBuilder = new Bundle(paramAction.getExtras());
    if (paramAction.getRemoteInputs() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", cg.a(paramAction.getRemoteInputs()));
    }
    return paramBuilder;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatJellybean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */