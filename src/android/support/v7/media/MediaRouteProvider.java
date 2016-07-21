package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;

public abstract class MediaRouteProvider
{
  private static final int MSG_DELIVER_DESCRIPTOR_CHANGED = 1;
  private static final int MSG_DELIVER_DISCOVERY_REQUEST_CHANGED = 2;
  private MediaRouteProvider.Callback mCallback;
  private final Context mContext;
  private MediaRouteProviderDescriptor mDescriptor;
  private MediaRouteDiscoveryRequest mDiscoveryRequest;
  private final MediaRouteProvider.ProviderHandler mHandler = new MediaRouteProvider.ProviderHandler(this, null);
  private final MediaRouteProvider.ProviderMetadata mMetadata;
  private boolean mPendingDescriptorChange;
  private boolean mPendingDiscoveryRequestChange;
  
  public MediaRouteProvider(Context paramContext)
  {
    this(paramContext, null);
  }
  
  MediaRouteProvider(Context paramContext, MediaRouteProvider.ProviderMetadata paramProviderMetadata)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    mContext = paramContext;
    if (paramProviderMetadata == null)
    {
      mMetadata = new MediaRouteProvider.ProviderMetadata(new ComponentName(paramContext, getClass()));
      return;
    }
    mMetadata = paramProviderMetadata;
  }
  
  private void deliverDescriptorChanged()
  {
    mPendingDescriptorChange = false;
    if (mCallback != null) {
      mCallback.onDescriptorChanged(this, mDescriptor);
    }
  }
  
  private void deliverDiscoveryRequestChanged()
  {
    mPendingDiscoveryRequestChange = false;
    onDiscoveryRequestChanged(mDiscoveryRequest);
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final MediaRouteProviderDescriptor getDescriptor()
  {
    return mDescriptor;
  }
  
  public final MediaRouteDiscoveryRequest getDiscoveryRequest()
  {
    return mDiscoveryRequest;
  }
  
  public final Handler getHandler()
  {
    return mHandler;
  }
  
  public final MediaRouteProvider.ProviderMetadata getMetadata()
  {
    return mMetadata;
  }
  
  public MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    return null;
  }
  
  public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest) {}
  
  public final void setCallback(MediaRouteProvider.Callback paramCallback)
  {
    MediaRouter.checkCallingThread();
    mCallback = paramCallback;
  }
  
  public final void setDescriptor(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    
    if (mDescriptor != paramMediaRouteProviderDescriptor)
    {
      mDescriptor = paramMediaRouteProviderDescriptor;
      if (!mPendingDescriptorChange)
      {
        mPendingDescriptorChange = true;
        mHandler.sendEmptyMessage(1);
      }
    }
  }
  
  public final void setDiscoveryRequest(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    
    if ((mDiscoveryRequest == paramMediaRouteDiscoveryRequest) || ((mDiscoveryRequest != null) && (mDiscoveryRequest.equals(paramMediaRouteDiscoveryRequest)))) {}
    do
    {
      return;
      mDiscoveryRequest = paramMediaRouteDiscoveryRequest;
    } while (mPendingDiscoveryRequestChange);
    mPendingDiscoveryRequestChange = true;
    mHandler.sendEmptyMessage(2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */