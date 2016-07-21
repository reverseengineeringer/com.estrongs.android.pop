package android.support.v7.media;

import android.content.Context;
import android.os.Build.VERSION;

abstract class RemoteControlClientCompat
{
  protected final Context mContext;
  protected final Object mRcc;
  protected RemoteControlClientCompat.VolumeCallback mVolumeCallback;
  
  protected RemoteControlClientCompat(Context paramContext, Object paramObject)
  {
    mContext = paramContext;
    mRcc = paramObject;
  }
  
  public static RemoteControlClientCompat obtain(Context paramContext, Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new RemoteControlClientCompat.JellybeanImpl(paramContext, paramObject);
    }
    return new RemoteControlClientCompat.LegacyImpl(paramContext, paramObject);
  }
  
  public Object getRemoteControlClient()
  {
    return mRcc;
  }
  
  public void setPlaybackInfo(RemoteControlClientCompat.PlaybackInfo paramPlaybackInfo) {}
  
  public void setVolumeCallback(RemoteControlClientCompat.VolumeCallback paramVolumeCallback)
  {
    mVolumeCallback = paramVolumeCallback;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemoteControlClientCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */