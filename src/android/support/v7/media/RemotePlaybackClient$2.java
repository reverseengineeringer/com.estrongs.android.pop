package android.support.v7.media;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

class RemotePlaybackClient$2
  extends MediaRouter.ControlRequestCallback
{
  RemotePlaybackClient$2(RemotePlaybackClient paramRemotePlaybackClient, String paramString, Intent paramIntent, RemotePlaybackClient.SessionActionCallback paramSessionActionCallback) {}
  
  public void onError(String paramString, Bundle paramBundle)
  {
    RemotePlaybackClient.access$600(this$0, val$intent, val$callback, paramString, paramBundle);
  }
  
  public void onResult(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      String str = RemotePlaybackClient.access$100(val$sessionId, paramBundle.getString("android.media.intent.extra.SESSION_ID"));
      MediaSessionStatus localMediaSessionStatus = MediaSessionStatus.fromBundle(paramBundle.getBundle("android.media.intent.extra.SESSION_STATUS"));
      RemotePlaybackClient.access$200(this$0, str);
      if (str != null)
      {
        if (RemotePlaybackClient.access$300()) {
          Log.d("RemotePlaybackClient", "Received result from " + val$intent.getAction() + ": data=" + RemotePlaybackClient.access$400(paramBundle) + ", sessionId=" + str + ", sessionStatus=" + localMediaSessionStatus);
        }
        try
        {
          val$callback.onResult(paramBundle, str, localMediaSessionStatus);
          return;
        }
        finally
        {
          if ((val$intent.getAction().equals("android.media.intent.action.END_SESSION")) && (str.equals(RemotePlaybackClient.access$700(this$0)))) {
            this$0.setSessionId(null);
          }
        }
      }
    }
    RemotePlaybackClient.access$500(this$0, val$intent, val$callback, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemotePlaybackClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */