package android.support.v7.media;

import java.lang.ref.WeakReference;

final class RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper
  implements MediaRouterJellybean.VolumeCallback
{
  private final WeakReference<RemoteControlClientCompat.JellybeanImpl> mImplWeak;
  
  public RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper(RemoteControlClientCompat.JellybeanImpl paramJellybeanImpl)
  {
    mImplWeak = new WeakReference(paramJellybeanImpl);
  }
  
  public void onVolumeSetRequest(Object paramObject, int paramInt)
  {
    paramObject = (RemoteControlClientCompat.JellybeanImpl)mImplWeak.get();
    if ((paramObject != null) && (mVolumeCallback != null)) {
      mVolumeCallback.onVolumeSetRequest(paramInt);
    }
  }
  
  public void onVolumeUpdateRequest(Object paramObject, int paramInt)
  {
    paramObject = (RemoteControlClientCompat.JellybeanImpl)mImplWeak.get();
    if ((paramObject != null) && (mVolumeCallback != null)) {
      mVolumeCallback.onVolumeUpdateRequest(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemoteControlClientCompat.JellybeanImpl.VolumeCallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */