package android.support.v7.media;

import android.content.Intent;

public abstract class MediaRouteProvider$RouteController
{
  public boolean onControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
  {
    return false;
  }
  
  public void onRelease() {}
  
  public void onSelect() {}
  
  public void onSetVolume(int paramInt) {}
  
  public void onUnselect() {}
  
  public void onUpdateVolume(int paramInt) {}
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProvider.RouteController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */