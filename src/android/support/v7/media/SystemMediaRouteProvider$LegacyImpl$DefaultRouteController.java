package android.support.v7.media;

import android.media.AudioManager;

final class SystemMediaRouteProvider$LegacyImpl$DefaultRouteController
  extends MediaRouteProvider.RouteController
{
  SystemMediaRouteProvider$LegacyImpl$DefaultRouteController(SystemMediaRouteProvider.LegacyImpl paramLegacyImpl) {}
  
  public void onSetVolume(int paramInt)
  {
    SystemMediaRouteProvider.LegacyImpl.access$000(this$0).setStreamVolume(3, paramInt, 0);
    SystemMediaRouteProvider.LegacyImpl.access$100(this$0);
  }
  
  public void onUpdateVolume(int paramInt)
  {
    int i = SystemMediaRouteProvider.LegacyImpl.access$000(this$0).getStreamVolume(3);
    if (Math.min(SystemMediaRouteProvider.LegacyImpl.access$000(this$0).getStreamMaxVolume(3), Math.max(0, i + paramInt)) != i) {
      SystemMediaRouteProvider.LegacyImpl.access$000(this$0).setStreamVolume(3, i, 0);
    }
    SystemMediaRouteProvider.LegacyImpl.access$100(this$0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.LegacyImpl.DefaultRouteController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */