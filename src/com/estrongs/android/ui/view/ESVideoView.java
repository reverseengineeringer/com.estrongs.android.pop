package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import java.io.IOException;
import java.util.Map;

public class ESVideoView
  extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private ar A = null;
  private aq B = null;
  private MediaPlayer.OnCompletionListener C = new al(this);
  private MediaPlayer.OnSeekCompleteListener D = new am(this);
  private MediaPlayer.OnErrorListener E = new an(this);
  private MediaPlayer.OnBufferingUpdateListener F = new ao(this);
  protected Uri a;
  MediaPlayer.OnVideoSizeChangedListener b = new aj(this);
  MediaPlayer.OnPreparedListener c = new ak(this);
  SurfaceHolder.Callback d = new ap(this);
  private String e = "VideoView";
  private int f;
  private int g = 0;
  private int h = 0;
  private SurfaceHolder i = null;
  private MediaPlayer j = null;
  private int k;
  private int l;
  private int m;
  private int n;
  private MediaController o;
  private MediaPlayer.OnCompletionListener p;
  private MediaPlayer.OnPreparedListener q;
  private int r;
  private MediaPlayer.OnErrorListener s;
  private int t;
  private boolean u;
  private boolean v;
  private boolean w;
  private Context x;
  private boolean y = false;
  private as z = null;
  
  public ESVideoView(Context paramContext)
  {
    super(paramContext);
    e();
    x = paramContext;
  }
  
  public ESVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    e();
    x = paramContext;
  }
  
  public ESVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e();
    x = paramContext;
  }
  
  private void e()
  {
    k = 0;
    l = 0;
    getHolder().addCallback(d);
    getHolder().setType(3);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    g = 0;
    h = 0;
  }
  
  private void f()
  {
    if (z == null)
    {
      z = new as(this);
      z.start();
    }
  }
  
  private void g()
  {
    if ((a == null) || (i == null)) {}
    do
    {
      return;
      Intent localIntent = new Intent("com.android.music.musicservicecommand");
      localIntent.putExtra("command", "pause");
      x.sendBroadcast(localIntent);
    } while (j != null);
    f();
    try
    {
      j = new MediaPlayer();
      j.setOnPreparedListener(c);
      j.setOnVideoSizeChangedListener(b);
      f = -1;
      j.setOnCompletionListener(C);
      j.setOnErrorListener(E);
      j.setOnBufferingUpdateListener(F);
      r = 0;
      j.setDataSource(x, a, null);
      j.setDisplay(i);
      j.setAudioStreamType(3);
      j.setScreenOnWhilePlaying(true);
      j.prepareAsync();
      j.setOnSeekCompleteListener(D);
      g = 1;
      h();
      return;
    }
    catch (IOException localIOException)
    {
      Log.w(e, "Unable to open content: " + a, localIOException);
      g = -1;
      h = -1;
      E.onError(j, 1, 0);
      j = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.w(e, "Unable to open content: " + a, localIllegalArgumentException);
      g = -1;
      h = -1;
      E.onError(j, 1, 0);
      j = null;
    }
  }
  
  private void h()
  {
    if ((j != null) && (o != null))
    {
      o.setMediaPlayer(this);
      if (!(getParent() instanceof View)) {
        break label60;
      }
    }
    label60:
    for (Object localObject = (View)getParent();; localObject = this)
    {
      o.setAnchorView((View)localObject);
      o.setEnabled(d());
      return;
    }
  }
  
  private void i()
  {
    if (o.isShowing())
    {
      o.hide();
      return;
    }
    o.show();
  }
  
  public void a()
  {
    if (j != null)
    {
      MediaPlayer localMediaPlayer = j;
      j = null;
      new Thread(new ah(this, localMediaPlayer)).start();
      g = 0;
      h = 0;
      y = false;
    }
  }
  
  public void a(int paramInt)
  {
    if (d())
    {
      j.seekTo(paramInt);
      if ((h == 3) && (!isPlaying())) {
        start();
      }
      t = 0;
      return;
    }
    t = paramInt;
  }
  
  public void a(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    p = paramOnCompletionListener;
  }
  
  public void a(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    s = paramOnErrorListener;
  }
  
  public void a(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    q = paramOnPreparedListener;
  }
  
  public void a(Uri paramUri)
  {
    a(paramUri, null);
  }
  
  public void a(Uri paramUri, Map<String, String> paramMap)
  {
    if ((a != null) && (!a.equals(paramUri)))
    {
      a(true, false);
      t = 0;
    }
    a = paramUri;
    g();
    requestLayout();
    invalidate();
  }
  
  public void a(MediaController paramMediaController)
  {
    if (o != null) {
      o.hide();
    }
    o = paramMediaController;
    h();
  }
  
  public void a(ar paramar)
  {
    A = paramar;
  }
  
  public void a(String paramString)
  {
    a(Uri.parse(paramString));
  }
  
  public void a(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    MediaPlayer localMediaPlayer;
    if (j != null)
    {
      localMediaPlayer = j;
      j = null;
      if (!paramBoolean2) {
        break label60;
      }
      new Thread(new ai(this, localMediaPlayer)).start();
    }
    for (;;)
    {
      g = 0;
      if (paramBoolean1) {
        h = 0;
      }
      y = false;
      return;
      label60:
      localMediaPlayer.reset();
      localMediaPlayer.release();
    }
  }
  
  public void b()
  {
    a(true, true);
    g();
  }
  
  public boolean c()
  {
    return y;
  }
  
  public boolean canPause()
  {
    return u;
  }
  
  public boolean canSeekBackward()
  {
    return v;
  }
  
  public boolean canSeekForward()
  {
    return w;
  }
  
  public boolean d()
  {
    return (j != null) && (g != -1) && (g != 0) && (g != 1);
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    if (j != null) {
      return r;
    }
    return 0;
  }
  
  public int getCurrentPosition()
  {
    if (d())
    {
      if (y) {
        return z.b;
      }
      return j.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (d())
    {
      if (f > 0) {
        return f;
      }
      f = j.getDuration();
      return f;
    }
    f = -1;
    return f;
  }
  
  public boolean isPlaying()
  {
    return (d()) && (j.isPlaying());
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i1;
    if ((paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 164) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6))
    {
      i1 = 1;
      if ((!d()) || (i1 == 0) || (o == null)) {
        break label182;
      }
      if ((paramInt != 79) && (paramInt != 85)) {
        break label114;
      }
      if (!j.isPlaying()) {
        break label101;
      }
      pause();
      o.show();
    }
    label101:
    label114:
    label143:
    do
    {
      do
      {
        return true;
        i1 = 0;
        break;
        start();
        o.hide();
        return true;
        if (paramInt != 126) {
          break label143;
        }
      } while (j.isPlaying());
      start();
      o.hide();
      return true;
      if ((paramInt != 86) && (paramInt != 127)) {
        break label178;
      }
    } while (!j.isPlaying());
    pause();
    o.show();
    return true;
    label178:
    i();
    label182:
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getDefaultSize(k, paramInt1);
    int i2 = getDefaultSize(l, paramInt2);
    paramInt1 = i2;
    paramInt2 = i1;
    if (k > 0)
    {
      paramInt1 = i2;
      paramInt2 = i1;
      if (l > 0)
      {
        if (k * i2 <= l * i1) {
          break label80;
        }
        paramInt1 = l * i1 / k;
        paramInt2 = i1;
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      label80:
      paramInt1 = i2;
      paramInt2 = i1;
      if (k * i2 < l * i1)
      {
        paramInt2 = k * i2 / l;
        paramInt1 = i2;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((d()) && (o != null)) {
      i();
    }
    return false;
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((d()) && (o != null)) {
      i();
    }
    return false;
  }
  
  public void pause()
  {
    if (y) {
      return;
    }
    if ((d()) && (j.isPlaying()))
    {
      j.pause();
      g = 4;
    }
    h = 4;
  }
  
  public void seekTo(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = 0;
    }
    if (d())
    {
      y = true;
      if (A != null) {
        A.a();
      }
    }
    if (z != null) {
      z.a(i1);
    }
  }
  
  public void start()
  {
    if (y) {
      return;
    }
    if (d())
    {
      j.start();
      g = 3;
    }
    h = 3;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */