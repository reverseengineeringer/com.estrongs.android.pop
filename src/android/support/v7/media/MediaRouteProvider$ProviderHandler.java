package android.support.v7.media;

import android.os.Handler;
import android.os.Message;

final class MediaRouteProvider$ProviderHandler
  extends Handler
{
  private MediaRouteProvider$ProviderHandler(MediaRouteProvider paramMediaRouteProvider) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 1: 
      MediaRouteProvider.access$100(this$0);
      return;
    }
    MediaRouteProvider.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProvider.ProviderHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */