package com.estrongs.chromecast;

import android.content.Context;
import android.net.Uri;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouteSelector.Builder;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.a;
import com.google.android.gms.cast.ab;
import com.google.android.gms.cast.ac;
import com.google.android.gms.cast.ah;
import com.google.android.gms.cast.ak;
import com.google.android.gms.cast.d;
import com.google.android.gms.cast.i;
import com.google.android.gms.cast.j;
import com.google.android.gms.cast.k;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.images.WebImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ChromeCastImpl
  implements ChromeCast
{
  private static final String APP_ID = "43597A76";
  private static final boolean DEBUG = false;
  private static final int ES_MIN_VERSION = 218;
  private static final String TAG = ChromeCastImpl.class.getSimpleName();
  private static final int VERSION = 1;
  private static Object mLock = new Object();
  private boolean isInited = false;
  private n mApiClient;
  private boolean mApplicationStarted;
  private MediaRouter.Callback mCallback;
  private k mCastListener;
  private ChromeCastImpl.ConnectionCallbacks mConnectionCallbacks;
  private r mConnectionFailedListener;
  private ArrayList<ChromeCastConnectionListener> mConnectionListeners = new ArrayList();
  private Context mContext;
  private ArrayList<CastDeviceListener> mDeviceListeners = new ArrayList();
  private ArrayList<RemoteMediaPlayerListener> mMediaPlayerListeners = new ArrayList();
  private int mMediaPlayerState = 0;
  private ak mRemoteMediaPlayer;
  private MediaRouter mRouter;
  private CastDeviceInfo mSelectedDeviceInfo = null;
  private MediaRouteSelector mSelector;
  private boolean mWaitingForReconnect = false;
  
  public ChromeCastImpl(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private void attachMediaChannel()
  {
    if (mRemoteMediaPlayer == null)
    {
      mRemoteMediaPlayer = new ak();
      mRemoteMediaPlayer.a(new ChromeCastImpl.2(this));
      mRemoteMediaPlayer.a(new ChromeCastImpl.3(this));
    }
    try
    {
      a.b.a(mApiClient, mRemoteMediaPlayer.e(), mRemoteMediaPlayer);
      mRemoteMediaPlayer.d(mApiClient).a(new ChromeCastImpl.4(this));
      return;
    }
    catch (Exception localException)
    {
      Log.e(TAG, "Failed to set up media channel", localException);
    }
  }
  
  private void detachMediaChannel()
  {
    if ((mRemoteMediaPlayer == null) || ((mRemoteMediaPlayer != null) && (a.b != null))) {}
    try
    {
      a.b.a(mApiClient, mRemoteMediaPlayer.e());
      mRemoteMediaPlayer = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e(TAG, "Failed to detach media channel", localException);
      }
    }
  }
  
  private void launchReceiver()
  {
    try
    {
      mCastListener = new ChromeCastImpl.1(this);
      mConnectionCallbacks = new ChromeCastImpl.ConnectionCallbacks(this, null);
      mConnectionFailedListener = new ChromeCastImpl.ConnectionFailedListener(this, null);
      j localj = i.a(CastDevice.b(((MediaRouter.RouteInfo)mSelectedDeviceInfo.getRouteInfo()).getExtras()), mCastListener);
      mApiClient = new com.google.android.gms.common.api.o(mContext).a(a.a, localj.a()).a(mConnectionCallbacks).a(mConnectionFailedListener).b();
      mApiClient.b();
      return;
    }
    catch (Exception localException)
    {
      Log.e(TAG, "Failed launchReceiver", localException);
    }
  }
  
  private void reattachMediaChannel()
  {
    if ((mRemoteMediaPlayer != null) && (mApiClient != null)) {}
    try
    {
      a.b.a(mApiClient, mRemoteMediaPlayer.e(), mRemoteMediaPlayer);
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to setup media channel", localIOException);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e(TAG, "Failed to setup media channel", localIllegalStateException);
    }
  }
  
  public void addConnectionListener(ChromeCastConnectionListener paramChromeCastConnectionListener)
  {
    if (paramChromeCastConnectionListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mConnectionListeners.add(paramChromeCastConnectionListener);
      return;
    }
  }
  
  public void addDeviceListener(CastDeviceListener paramCastDeviceListener)
  {
    if (paramCastDeviceListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mDeviceListeners.add(paramCastDeviceListener);
      return;
    }
  }
  
  public void addMediaPlayerListener(RemoteMediaPlayerListener paramRemoteMediaPlayerListener)
  {
    if (paramRemoteMediaPlayerListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mMediaPlayerListeners.add(paramRemoteMediaPlayerListener);
      return;
    }
  }
  
  public void destroy()
  {
    isInited = false;
    synchronized (mLock)
    {
      mMediaPlayerListeners.clear();
      mDeviceListeners.clear();
      mConnectionListeners.clear();
      return;
    }
  }
  
  public void disconnect()
  {
    teardown();
  }
  
  public CastDeviceInfo getConnectedDevice()
  {
    if ((mApiClient != null) && (mApiClient.d()) && (mSelectedDeviceInfo != null)) {
      return mSelectedDeviceInfo;
    }
    return null;
  }
  
  public List<CastDeviceInfo> getDevices()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mRouter.getRoutes().iterator();
    while (localIterator.hasNext())
    {
      MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)localIterator.next();
      try
      {
        if ((!localRouteInfo.isDefault()) && (localRouteInfo.getExtras() != null) && (CastDevice.b(localRouteInfo.getExtras()) != null)) {
          localArrayList.add(new CastDeviceInfoImpl(localRouteInfo));
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return localArrayList;
  }
  
  public int getIdleReason()
  {
    if ((mRemoteMediaPlayer != null) && (mRemoteMediaPlayer.c() != null)) {
      return mRemoteMediaPlayer.c().c();
    }
    return 0;
  }
  
  public int getMediaPlayerState()
  {
    if ((mRemoteMediaPlayer != null) && (mRemoteMediaPlayer.c() != null)) {
      return mRemoteMediaPlayer.c().b();
    }
    return mMediaPlayerState;
  }
  
  public long getMediaStreamDuration()
  {
    if (mRemoteMediaPlayer != null) {
      return mRemoteMediaPlayer.b();
    }
    return -1L;
  }
  
  public long getMediaStreamPosition()
  {
    if (mRemoteMediaPlayer != null) {
      return mRemoteMediaPlayer.a();
    }
    return -1L;
  }
  
  public int getVersion()
  {
    return 1;
  }
  
  public double getVolume()
  {
    try
    {
      double d = a.b.b(mApiClient);
      return d;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e(TAG, "Unable to change volume", localIllegalStateException);
    }
    return -1.0D;
  }
  
  public int init()
  {
    if (isInited) {
      return 0;
    }
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext) != 0) {
      return -1;
    }
    mRouter = MediaRouter.getInstance(mContext);
    mSelector = new MediaRouteSelector.Builder().addControlCategory(com.google.android.gms.cast.o.a("43597A76")).build();
    mCallback = new ChromeCastImpl.MyMediaRouterCallback(this, null);
    isInited = true;
    return 0;
  }
  
  public boolean isConnected()
  {
    if (mApiClient != null) {
      return mApiClient.d();
    }
    return false;
  }
  
  public boolean isConnecting()
  {
    if (mApiClient != null) {
      mApiClient.e();
    }
    return false;
  }
  
  public void loadMedia(String arg1, String paramString2, String paramString3, MediaMetaData paramMediaMetaData)
  {
    if ((??? == null) || (paramString3 == null)) {
      return;
    }
    if (paramString3.startsWith("image")) {}
    for (int i = 1;; i = 0)
    {
      ac localac;
      if (i != 0)
      {
        localac = new ac(4);
        localac.a("com.google.android.gms.cast.metadata.TITLE", paramString2);
        if (paramMediaMetaData != null)
        {
          if (albumArtist != null) {
            localac.a("com.google.android.gms.cast.metadata.ALBUM_ARTIST", albumArtist);
          }
          if (albumTitle != null) {
            localac.a("com.google.android.gms.cast.metadata.ALBUM_TITLE", albumTitle);
          }
          if (title != null) {
            localac.a("com.google.android.gms.cast.metadata.TITLE", title);
          }
          if (imageUrl != null) {
            localac.a(new WebImage(Uri.parse(imageUrl)));
          }
        }
        if (i == 0) {
          break label295;
        }
      }
      label295:
      for (??? = new ab(???).a(paramString3).a(0).a(localac).a();; ??? = new ab(???).a(paramString3).a(1).a(localac).a())
      {
        try
        {
          mRemoteMediaPlayer.a(mApiClient, ???, true).a(new ChromeCastImpl.5(this));
          return;
        }
        catch (Exception ???)
        {
          Log.e(TAG, "Problem opening media during loading", ???);
          synchronized (mLock)
          {
            paramString2 = mMediaPlayerListeners.iterator();
            if (!paramString2.hasNext()) {
              break label323;
            }
            ((RemoteMediaPlayerListener)paramString2.next()).onStatusUpdated(64536);
          }
        }
        if (paramString3.startsWith("audio"))
        {
          localac = new ac(3);
          break;
        }
        localac = new ac(1);
        break;
      }
      label323:
      return;
    }
  }
  
  public void mediaPause()
  {
    if ((mRemoteMediaPlayer == null) || (mApiClient == null)) {
      return;
    }
    mRemoteMediaPlayer.a(mApiClient);
  }
  
  public void mediaPlay()
  {
    if ((mRemoteMediaPlayer == null) || (mApiClient == null)) {
      return;
    }
    mRemoteMediaPlayer.c(mApiClient);
  }
  
  public void mediaSeek(long paramLong)
  {
    if ((mRemoteMediaPlayer == null) || (mApiClient == null)) {
      return;
    }
    mRemoteMediaPlayer.a(mApiClient, paramLong);
  }
  
  public void mediaStop()
  {
    if ((mRemoteMediaPlayer == null) || (mApiClient == null)) {}
    while (mRemoteMediaPlayer.c() == null) {
      return;
    }
    mRemoteMediaPlayer.b(mApiClient);
  }
  
  public void removeConnectionListener(ChromeCastConnectionListener paramChromeCastConnectionListener)
  {
    if (paramChromeCastConnectionListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mConnectionListeners.remove(paramChromeCastConnectionListener);
      return;
    }
  }
  
  public void removeDeviceListener(CastDeviceListener paramCastDeviceListener)
  {
    if (paramCastDeviceListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mDeviceListeners.remove(paramCastDeviceListener);
      return;
    }
  }
  
  public void removeMediaPlayerListener(RemoteMediaPlayerListener paramRemoteMediaPlayerListener)
  {
    if (paramRemoteMediaPlayerListener == null) {
      return;
    }
    synchronized (mLock)
    {
      mMediaPlayerListeners.remove(paramRemoteMediaPlayerListener);
      return;
    }
  }
  
  public void selectDevice(CastDeviceInfo paramCastDeviceInfo)
  {
    mRouter.selectRoute((MediaRouter.RouteInfo)paramCastDeviceInfo.getRouteInfo());
  }
  
  public void setVolume(double paramDouble)
  {
    if ((mRemoteMediaPlayer == null) || (mApiClient == null)) {
      return;
    }
    try
    {
      a.b.a(mApiClient, paramDouble);
      return;
    }
    catch (Exception localException)
    {
      Log.e(TAG, "unable to set volume", localException);
    }
  }
  
  public void startScan()
  {
    mRouter.addCallback(mSelector, mCallback, 1);
  }
  
  public void stopScan()
  {
    mRouter.removeCallback(mCallback);
  }
  
  public void teardown()
  {
    if (mApiClient != null)
    {
      if (mApplicationStarted)
      {
        if (mApiClient.d())
        {
          a.b.a(mApiClient);
          detachMediaChannel();
          mApiClient.c();
        }
        mApplicationStarted = false;
      }
      mApiClient = null;
      mRouter.getDefaultRoute().select();
    }
    mSelectedDeviceInfo = null;
    mWaitingForReconnect = false;
    synchronized (mLock)
    {
      Iterator localIterator = mConnectionListeners.iterator();
      if (localIterator.hasNext()) {
        ((ChromeCastConnectionListener)localIterator.next()).onDisconnected();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */