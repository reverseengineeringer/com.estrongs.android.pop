package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.te;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@me
public class c
  extends r
  implements AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener
{
  private static final Map<Integer, String> a = new HashMap();
  private final y b;
  private int c = 0;
  private int d = 0;
  private MediaPlayer e;
  private Uri f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private float l = 1.0F;
  private boolean m;
  private boolean n;
  private int o;
  private q p;
  
  static
  {
    a.put(Integer.valueOf(64532), "MEDIA_ERROR_IO");
    a.put(Integer.valueOf(64529), "MEDIA_ERROR_MALFORMED");
    a.put(Integer.valueOf(64526), "MEDIA_ERROR_UNSUPPORTED");
    a.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
    a.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
    a.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
    a.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
    a.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
    a.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
    a.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
    a.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
    a.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
    a.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
    a.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
    a.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
    a.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
  }
  
  public c(Context paramContext, y paramy)
  {
    super(paramContext);
    setSurfaceTextureListener(this);
    b = paramy;
    b.a(this);
  }
  
  private void a(boolean paramBoolean)
  {
    b.d("AdVideoView release");
    if (e != null)
    {
      e.reset();
      e.release();
      e = null;
      b(0);
      if (paramBoolean)
      {
        d = 0;
        c(0);
      }
      j();
    }
  }
  
  private void b(float paramFloat)
  {
    if (e != null) {}
    try
    {
      e.setVolume(paramFloat, paramFloat);
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
    b.e("AdVideoView setMediaPlayerVolume() called before onPrepared().");
    return;
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 3) {
      b.c();
    }
    for (;;)
    {
      c = paramInt;
      return;
      if ((c == 3) && (paramInt != 3)) {
        b.d();
      }
    }
  }
  
  private void c(int paramInt)
  {
    d = paramInt;
  }
  
  private void g()
  {
    b.d("AdVideoView init MediaPlayer");
    SurfaceTexture localSurfaceTexture = getSurfaceTexture();
    if ((f == null) || (localSurfaceTexture == null)) {
      return;
    }
    a(false);
    try
    {
      e = new MediaPlayer();
      e.setOnBufferingUpdateListener(this);
      e.setOnCompletionListener(this);
      e.setOnErrorListener(this);
      e.setOnInfoListener(this);
      e.setOnPreparedListener(this);
      e.setOnVideoSizeChangedListener(this);
      i = 0;
      e.setDataSource(getContext(), f);
      e.setSurface(new Surface(localSurfaceTexture));
      e.setAudioStreamType(3);
      e.setScreenOnWhilePlaying(true);
      e.prepareAsync();
      b(1);
      return;
    }
    catch (IOException localIOException)
    {
      b.d("Failed to initialize MediaPlayer at " + f, localIOException);
      onError(e, 1, 0);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  private void h()
  {
    if ((k()) && (e.getCurrentPosition() > 0) && (d != 3))
    {
      b.d("AdVideoView nudging MediaPlayer");
      b(0.0F);
      e.start();
      int i1 = e.getCurrentPosition();
      long l1 = ae.i().a();
      while ((k()) && (e.getCurrentPosition() == i1) && (ae.i().a() - l1 <= 250L)) {}
      e.pause();
      n();
    }
  }
  
  private void i()
  {
    AudioManager localAudioManager = o();
    if ((localAudioManager != null) && (!n))
    {
      if (localAudioManager.requestAudioFocus(this, 3, 2) == 1) {
        l();
      }
    }
    else {
      return;
    }
    b.e("AdVideoView audio focus request failed");
  }
  
  private void j()
  {
    b.d("AdVideoView abandon audio focus");
    AudioManager localAudioManager = o();
    if ((localAudioManager != null) && (n))
    {
      if (localAudioManager.abandonAudioFocus(this) == 1) {
        n = false;
      }
    }
    else {
      return;
    }
    b.e("AdVideoView abandon audio focus failed");
  }
  
  private boolean k()
  {
    return (e != null) && (c != -1) && (c != 0) && (c != 1);
  }
  
  private void l()
  {
    b.d("AdVideoView audio focus gained");
    n = true;
    n();
  }
  
  private void m()
  {
    b.d("AdVideoView audio focus lost");
    n = false;
    n();
  }
  
  private void n()
  {
    if ((!m) && (n))
    {
      b(l);
      return;
    }
    b(0.0F);
  }
  
  private AudioManager o()
  {
    return (AudioManager)getContext().getSystemService("audio");
  }
  
  public String a()
  {
    return "MediaPlayer";
  }
  
  public void a(float paramFloat)
  {
    l = paramFloat;
    n();
  }
  
  public void a(int paramInt)
  {
    b.d("AdVideoView seek " + paramInt);
    if (k())
    {
      e.seekTo(paramInt);
      o = 0;
      return;
    }
    o = paramInt;
  }
  
  public void a(q paramq)
  {
    p = paramq;
  }
  
  public void b()
  {
    b.d("AdVideoView stop");
    if (e != null)
    {
      e.stop();
      e.release();
      e = null;
      b(0);
      c(0);
      j();
    }
    b.b();
  }
  
  public void c()
  {
    b.d("AdVideoView play");
    if (k())
    {
      e.start();
      b(3);
      oe.a.post(new i(this));
    }
    c(3);
  }
  
  public void d()
  {
    b.d("AdVideoView pause");
    if ((k()) && (e.isPlaying()))
    {
      e.pause();
      b(4);
      oe.a.post(new j(this));
    }
    c(4);
  }
  
  public void e()
  {
    m = true;
    n();
  }
  
  public void f()
  {
    m = false;
    n();
  }
  
  public int getCurrentPosition()
  {
    if (k()) {
      return e.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (k()) {
      return e.getDuration();
    }
    return -1;
  }
  
  public int getVideoHeight()
  {
    if (e != null) {
      return e.getVideoHeight();
    }
    return 0;
  }
  
  public int getVideoWidth()
  {
    if (e != null) {
      return e.getVideoWidth();
    }
    return 0;
  }
  
  public void onAudioFocusChange(int paramInt)
  {
    if (paramInt > 0) {
      l();
    }
    while (paramInt >= 0) {
      return;
    }
    m();
  }
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    i = paramInt;
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    b.d("AdVideoView completion");
    b(5);
    c(5);
    oe.a.post(new e(this));
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = (String)a.get(Integer.valueOf(paramInt1));
    String str = (String)a.get(Integer.valueOf(paramInt2));
    b.e("AdVideoView MediaPlayer error: " + paramMediaPlayer + ":" + str);
    b(-1);
    c(-1);
    oe.a.post(new f(this, paramMediaPlayer, str));
    return true;
  }
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = (String)a.get(Integer.valueOf(paramInt1));
    String str = (String)a.get(Integer.valueOf(paramInt2));
    b.d("AdVideoView MediaPlayer info: " + paramMediaPlayer + ":" + str);
    return true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = getDefaultSize(g, paramInt1);
    int i4 = getDefaultSize(h, paramInt2);
    int i2 = i4;
    int i1 = i3;
    int i5;
    if (g > 0)
    {
      i2 = i4;
      i1 = i3;
      if (h > 0)
      {
        i4 = View.MeasureSpec.getMode(paramInt1);
        paramInt1 = View.MeasureSpec.getSize(paramInt1);
        i5 = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        if ((i4 != 1073741824) || (i5 != 1073741824)) {
          break label211;
        }
        if (g * paramInt2 >= h * paramInt1) {
          break label178;
        }
        i1 = g * paramInt2 / h;
        i2 = paramInt2;
      }
    }
    for (;;)
    {
      setMeasuredDimension(i1, i2);
      if (Build.VERSION.SDK_INT == 16)
      {
        if (((j > 0) && (j != i1)) || ((k > 0) && (k != i2))) {
          h();
        }
        j = i1;
        k = i2;
      }
      return;
      label178:
      if (g * paramInt2 > h * paramInt1)
      {
        i2 = h * paramInt1 / g;
        i1 = paramInt1;
        continue;
        label211:
        if (i4 == 1073741824)
        {
          i2 = h * paramInt1 / g;
          if ((i5 == Integer.MIN_VALUE) && (i2 > paramInt2))
          {
            i2 = paramInt2;
            i1 = paramInt1;
          }
        }
        else
        {
          if (i5 == 1073741824)
          {
            i3 = g * paramInt2 / h;
            i2 = paramInt2;
            i1 = i3;
            if (i4 != Integer.MIN_VALUE) {
              continue;
            }
            i2 = paramInt2;
            i1 = i3;
            if (i3 <= paramInt1) {
              continue;
            }
            i2 = paramInt2;
            i1 = paramInt1;
            continue;
          }
          i3 = g;
          i1 = h;
          if ((i5 == Integer.MIN_VALUE) && (i1 > paramInt2)) {
            i3 = g * paramInt2 / h;
          }
          for (;;)
          {
            i2 = paramInt2;
            i1 = i3;
            if (i4 != Integer.MIN_VALUE) {
              break;
            }
            i2 = paramInt2;
            i1 = i3;
            if (i3 <= paramInt1) {
              break;
            }
            i2 = h * paramInt1 / g;
            i1 = paramInt1;
            break;
            paramInt2 = i1;
          }
        }
        i1 = paramInt1;
      }
      else
      {
        i2 = paramInt2;
        i1 = paramInt1;
      }
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    b.d("AdVideoView prepared");
    b(2);
    b.a();
    oe.a.post(new d(this));
    g = paramMediaPlayer.getVideoWidth();
    h = paramMediaPlayer.getVideoHeight();
    if (o != 0) {
      a(o);
    }
    h();
    b.c("AdVideoView stream dimensions: " + g + " x " + h);
    if (d == 3) {
      c();
    }
    i();
    n();
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    b.d("AdVideoView surface created");
    g();
    oe.a.post(new g(this));
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    b.d("AdVideoView surface destroyed");
    if ((e != null) && (o == 0)) {
      o = e.getCurrentPosition();
    }
    oe.a.post(new h(this));
    a(true);
    return true;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    int i2 = 1;
    b.d("AdVideoView surface changed");
    int i1;
    if (d == 3)
    {
      i1 = 1;
      if ((g != paramInt1) || (h != paramInt2)) {
        break label81;
      }
    }
    label81:
    for (paramInt1 = i2;; paramInt1 = 0)
    {
      if ((e != null) && (i1 != 0) && (paramInt1 != 0))
      {
        if (o != 0) {
          a(o);
        }
        c();
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture)
  {
    b.b(this);
  }
  
  public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    b.d("AdVideoView size changed: " + paramInt1 + " x " + paramInt2);
    g = paramMediaPlayer.getVideoWidth();
    h = paramMediaPlayer.getVideoHeight();
    if ((g != 0) && (h != 0)) {
      requestLayout();
    }
  }
  
  public void setMimeType(String paramString) {}
  
  public void setVideoPath(String paramString)
  {
    setVideoURI(Uri.parse(paramString));
  }
  
  public void setVideoURI(Uri paramUri)
  {
    f = paramUri;
    o = 0;
    g();
    requestLayout();
    invalidate();
  }
  
  public String toString()
  {
    return getClass().getName() + "@" + Integer.toHexString(hashCode());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */