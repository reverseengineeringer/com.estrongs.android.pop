package android.support.v7.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.util.Log;

class MediaRouteProviderService$1
  extends MediaRouter.ControlRequestCallback
{
  MediaRouteProviderService$1(MediaRouteProviderService paramMediaRouteProviderService, MediaRouteProviderService.ClientRecord paramClientRecord, int paramInt1, Intent paramIntent, Messenger paramMessenger, int paramInt2) {}
  
  public void onError(String paramString, Bundle paramBundle)
  {
    if (MediaRouteProviderService.access$200()) {
      Log.d("MediaRouteProviderSrv", val$client + ": Route control request failed" + ", controllerId=" + val$controllerId + ", intent=" + val$intent + ", error=" + paramString + ", data=" + paramBundle);
    }
    if (MediaRouteProviderService.access$300(this$0, val$messenger) >= 0)
    {
      if (paramString != null)
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("error", paramString);
        MediaRouteProviderService.access$400(val$messenger, 4, val$requestId, 0, paramBundle, localBundle);
      }
    }
    else {
      return;
    }
    MediaRouteProviderService.access$400(val$messenger, 4, val$requestId, 0, paramBundle, null);
  }
  
  public void onResult(Bundle paramBundle)
  {
    if (MediaRouteProviderService.access$200()) {
      Log.d("MediaRouteProviderSrv", val$client + ": Route control request succeeded" + ", controllerId=" + val$controllerId + ", intent=" + val$intent + ", data=" + paramBundle);
    }
    if (MediaRouteProviderService.access$300(this$0, val$messenger) >= 0) {
      MediaRouteProviderService.access$400(val$messenger, 3, val$requestId, 0, paramBundle, null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */