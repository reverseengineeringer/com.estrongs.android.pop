package android.support.v7.media;

final class MediaRouterJellybeanMr1
{
  private static final String TAG = "MediaRouterJellybeanMr1";
  
  public static Object createCallback(MediaRouterJellybeanMr1.Callback paramCallback)
  {
    return new MediaRouterJellybeanMr1.CallbackProxy(paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouterJellybeanMr1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */