package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class RemotePlaybackClient$StatusReceiver
  extends BroadcastReceiver
{
  public static final String ACTION_ITEM_STATUS_CHANGED = "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED";
  public static final String ACTION_SESSION_STATUS_CHANGED = "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED";
  
  private RemotePlaybackClient$StatusReceiver(RemotePlaybackClient paramRemotePlaybackClient) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("android.media.intent.extra.SESSION_ID");
    if ((paramContext == null) || (!paramContext.equals(RemotePlaybackClient.access$700(this$0)))) {
      Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing or invalid session id: sessionId=" + paramContext);
    }
    MediaSessionStatus localMediaSessionStatus;
    do
    {
      String str;
      do
      {
        MediaItemStatus localMediaItemStatus;
        do
        {
          return;
          localMediaSessionStatus = MediaSessionStatus.fromBundle(paramIntent.getBundleExtra("android.media.intent.extra.SESSION_STATUS"));
          str = paramIntent.getAction();
          if (!str.equals("android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED")) {
            break;
          }
          str = paramIntent.getStringExtra("android.media.intent.extra.ITEM_ID");
          if (str == null)
          {
            Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing item id.");
            return;
          }
          localMediaItemStatus = MediaItemStatus.fromBundle(paramIntent.getBundleExtra("android.media.intent.extra.ITEM_STATUS"));
          if (localMediaItemStatus == null)
          {
            Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing item status.");
            return;
          }
          if (RemotePlaybackClient.access$300()) {
            Log.d("RemotePlaybackClient", "Received item status callback: sessionId=" + paramContext + ", sessionStatus=" + localMediaSessionStatus + ", itemId=" + str + ", itemStatus=" + localMediaItemStatus);
          }
        } while (RemotePlaybackClient.access$800(this$0) == null);
        RemotePlaybackClient.access$800(this$0).onItemStatusChanged(paramIntent.getExtras(), paramContext, localMediaSessionStatus, str, localMediaItemStatus);
        return;
      } while (!str.equals("android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"));
      if (localMediaSessionStatus == null)
      {
        Log.w("RemotePlaybackClient", "Discarding spurious media status callback with missing session status.");
        return;
      }
      if (RemotePlaybackClient.access$300()) {
        Log.d("RemotePlaybackClient", "Received session status callback: sessionId=" + paramContext + ", sessionStatus=" + localMediaSessionStatus);
      }
    } while (RemotePlaybackClient.access$800(this$0) == null);
    RemotePlaybackClient.access$800(this$0).onSessionStatusChanged(paramIntent.getExtras(), paramContext, localMediaSessionStatus);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemotePlaybackClient.StatusReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */