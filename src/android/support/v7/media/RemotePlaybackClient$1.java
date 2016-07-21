package android.support.v7.media;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

class RemotePlaybackClient$1
  extends MediaRouter.ControlRequestCallback
{
  RemotePlaybackClient$1(RemotePlaybackClient paramRemotePlaybackClient, String paramString1, String paramString2, Intent paramIntent, RemotePlaybackClient.ItemActionCallback paramItemActionCallback) {}
  
  public void onError(String paramString, Bundle paramBundle)
  {
    RemotePlaybackClient.access$600(this$0, val$intent, val$callback, paramString, paramBundle);
  }
  
  public void onResult(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      String str1 = RemotePlaybackClient.access$100(val$sessionId, paramBundle.getString("android.media.intent.extra.SESSION_ID"));
      MediaSessionStatus localMediaSessionStatus = MediaSessionStatus.fromBundle(paramBundle.getBundle("android.media.intent.extra.SESSION_STATUS"));
      String str2 = RemotePlaybackClient.access$100(val$itemId, paramBundle.getString("android.media.intent.extra.ITEM_ID"));
      MediaItemStatus localMediaItemStatus = MediaItemStatus.fromBundle(paramBundle.getBundle("android.media.intent.extra.ITEM_STATUS"));
      RemotePlaybackClient.access$200(this$0, str1);
      if ((str1 != null) && (str2 != null) && (localMediaItemStatus != null))
      {
        if (RemotePlaybackClient.access$300()) {
          Log.d("RemotePlaybackClient", "Received result from " + val$intent.getAction() + ": data=" + RemotePlaybackClient.access$400(paramBundle) + ", sessionId=" + str1 + ", sessionStatus=" + localMediaSessionStatus + ", itemId=" + str2 + ", itemStatus=" + localMediaItemStatus);
        }
        val$callback.onResult(paramBundle, str1, localMediaSessionStatus, str2, localMediaItemStatus);
        return;
      }
    }
    RemotePlaybackClient.access$500(this$0, val$intent, val$callback, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemotePlaybackClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */