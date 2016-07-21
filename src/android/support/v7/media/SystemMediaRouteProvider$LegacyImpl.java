package android.support.v7.media;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import java.util.ArrayList;

class SystemMediaRouteProvider$LegacyImpl
  extends SystemMediaRouteProvider
{
  private static final ArrayList<IntentFilter> CONTROL_FILTERS;
  private static final int PLAYBACK_STREAM = 3;
  private final AudioManager mAudioManager;
  private int mLastReportedVolume = -1;
  private final SystemMediaRouteProvider.LegacyImpl.VolumeChangeReceiver mVolumeChangeReceiver;
  
  static
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
    localIntentFilter.addCategory("android.media.intent.category.LIVE_VIDEO");
    CONTROL_FILTERS = new ArrayList();
    CONTROL_FILTERS.add(localIntentFilter);
  }
  
  public SystemMediaRouteProvider$LegacyImpl(Context paramContext)
  {
    super(paramContext);
    mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
    mVolumeChangeReceiver = new SystemMediaRouteProvider.LegacyImpl.VolumeChangeReceiver(this);
    paramContext.registerReceiver(mVolumeChangeReceiver, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
    publishRoutes();
  }
  
  private void publishRoutes()
  {
    int i = mAudioManager.getStreamMaxVolume(3);
    mLastReportedVolume = mAudioManager.getStreamVolume(3);
    MediaRouteDescriptor localMediaRouteDescriptor = new MediaRouteDescriptor.Builder("DEFAULT_ROUTE", "System").addControlFilters(CONTROL_FILTERS).setPlaybackStream(3).setPlaybackType(0).setVolumeHandling(1).setVolumeMax(i).setVolume(mLastReportedVolume).build();
    setDescriptor(new MediaRouteProviderDescriptor.Builder().addRoute(localMediaRouteDescriptor).build());
  }
  
  public MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    if (paramString.equals("DEFAULT_ROUTE")) {
      return new SystemMediaRouteProvider.LegacyImpl.DefaultRouteController(this);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.LegacyImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */