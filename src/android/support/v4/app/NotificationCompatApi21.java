package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.os.Bundle;
import android.os.Parcelable;

class NotificationCompatApi21
{
  public static final String CATEGORY_ALARM = "alarm";
  public static final String CATEGORY_CALL = "call";
  public static final String CATEGORY_EMAIL = "email";
  public static final String CATEGORY_ERROR = "err";
  public static final String CATEGORY_EVENT = "event";
  public static final String CATEGORY_MESSAGE = "msg";
  public static final String CATEGORY_PROGRESS = "progress";
  public static final String CATEGORY_PROMO = "promo";
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  public static final String CATEGORY_SERVICE = "service";
  public static final String CATEGORY_SOCIAL = "social";
  public static final String CATEGORY_STATUS = "status";
  public static final String CATEGORY_SYSTEM = "sys";
  public static final String CATEGORY_TRANSPORT = "transport";
  
  private static RemoteInput a(ce paramce)
  {
    return new RemoteInput.Builder(paramce.a()).setLabel(paramce.b()).setChoices(paramce.c()).setAllowFreeFormInput(paramce.d()).addExtras(paramce.e()).build();
  }
  
  static Bundle a(NotificationCompatBase.UnreadConversation paramUnreadConversation)
  {
    Parcelable[] arrayOfParcelable = null;
    int i = 0;
    if (paramUnreadConversation == null) {
      return null;
    }
    Bundle localBundle1 = new Bundle();
    Object localObject = arrayOfParcelable;
    if (paramUnreadConversation.getParticipants() != null)
    {
      localObject = arrayOfParcelable;
      if (paramUnreadConversation.getParticipants().length > 1) {
        localObject = paramUnreadConversation.getParticipants()[0];
      }
    }
    arrayOfParcelable = new Parcelable[paramUnreadConversation.getMessages().length];
    while (i < arrayOfParcelable.length)
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("text", paramUnreadConversation.getMessages()[i]);
      localBundle2.putString("author", (String)localObject);
      arrayOfParcelable[i] = localBundle2;
      i += 1;
    }
    localBundle1.putParcelableArray("messages", arrayOfParcelable);
    localObject = paramUnreadConversation.getRemoteInput();
    if (localObject != null) {
      localBundle1.putParcelable("remote_input", a((ce)localObject));
    }
    localBundle1.putParcelable("on_reply", paramUnreadConversation.getReplyPendingIntent());
    localBundle1.putParcelable("on_read", paramUnreadConversation.getReadPendingIntent());
    localBundle1.putStringArray("participants", paramUnreadConversation.getParticipants());
    localBundle1.putLong("timestamp", paramUnreadConversation.getLatestTimestamp());
    return localBundle1;
  }
  
  static NotificationCompatBase.UnreadConversation a(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, cf paramcf)
  {
    int k = 0;
    if (paramBundle == null) {
      return null;
    }
    Object localObject = paramBundle.getParcelableArray("messages");
    String[] arrayOfString1;
    int i;
    int j;
    if (localObject != null)
    {
      arrayOfString1 = new String[localObject.length];
      i = 0;
      if (i < arrayOfString1.length) {
        if (!(localObject[i] instanceof Bundle))
        {
          j = k;
          label53:
          if (j == 0) {
            break label188;
          }
        }
      }
    }
    for (;;)
    {
      localObject = (PendingIntent)paramBundle.getParcelable("on_read");
      PendingIntent localPendingIntent = (PendingIntent)paramBundle.getParcelable("on_reply");
      RemoteInput localRemoteInput = (RemoteInput)paramBundle.getParcelable("remote_input");
      String[] arrayOfString2 = paramBundle.getStringArray("participants");
      if ((arrayOfString2 == null) || (arrayOfString2.length != 1)) {
        break;
      }
      if (localRemoteInput != null) {}
      for (paramcf = a(localRemoteInput, paramcf);; paramcf = null)
      {
        return paramFactory.build(arrayOfString1, paramcf, localPendingIntent, (PendingIntent)localObject, arrayOfString2, paramBundle.getLong("timestamp"));
        arrayOfString1[i] = ((Bundle)localObject[i]).getString("text");
        j = k;
        if (arrayOfString1[i] == null) {
          break label53;
        }
        i += 1;
        break;
      }
      j = 1;
      break label53;
      label188:
      break;
      arrayOfString1 = null;
    }
  }
  
  private static ce a(RemoteInput paramRemoteInput, cf paramcf)
  {
    return paramcf.b(paramRemoteInput.getResultKey(), paramRemoteInput.getLabel(), paramRemoteInput.getChoices(), paramRemoteInput.getAllowFreeFormInput(), paramRemoteInput.getExtras());
  }
  
  public static String getCategory(Notification paramNotification)
  {
    return category;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */