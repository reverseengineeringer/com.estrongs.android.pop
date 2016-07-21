package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View.MeasureSpec;
import android.widget.VideoView;
import java.io.IOException;

public class gq
  extends VideoView
{
  private static final String b = gq.class.getSimpleName();
  MediaPlayer.OnPreparedListener a = new gq.1(this);
  private gq.a c;
  private float d = 0.0F;
  private Uri e = null;
  private int f = 0;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private int j = -1;
  private int k = -1;
  private gq.b l = gq.b.a;
  private AudioManager m = null;
  private MediaPlayer n = null;
  private boolean o = false;
  private boolean p = false;
  private MediaPlayer.OnCompletionListener q = new gq.2(this);
  private MediaPlayer.OnErrorListener r = new gq.3(this);
  private final kb<ln> s = new gq.4(this);
  
  public gq(Context paramContext, gq.a parama)
  {
    super(paramContext);
    c = parama;
    m = ((AudioManager)getContext().getSystemService("audio"));
    if (m != null) {
      i = m.getStreamVolume(3);
    }
    a(parama);
  }
  
  private void a(gq.a parama)
  {
    l = gq.b.b;
    c = parama;
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    requestLayout();
    lo.a().a(s);
    if (getHolder() != null) {
      getHolder().setType(3);
    }
  }
  
  private void l()
  {
    setFocusable(false);
    setFocusableInTouchMode(false);
    n();
    pause();
    n = null;
    lo.a().b(s);
  }
  
  private void m()
  {
    if (e == null) {
      return;
    }
    setOnPreparedListener(a);
    setOnCompletionListener(q);
    setOnErrorListener(r);
    pause();
    if (o()) {
      setVideoURI(e);
    }
    for (;;)
    {
      requestFocus();
      return;
      setVideoPath(e.getPath());
    }
  }
  
  private void n()
  {
    if (getContext() != null)
    {
      Intent localIntent = new Intent("com.android.music.musicservicecommand");
      localIntent.putExtra("command", "pause");
      getContext().sendBroadcast(localIntent);
    }
  }
  
  private boolean o()
  {
    return (e != null) && (e.getScheme() != null) && (!e.getScheme().equalsIgnoreCase("file"));
  }
  
  public void a()
  {
    if (n != null) {
      n.setVolume(0.0F, 0.0F);
    }
    o = true;
  }
  
  public void a(int paramInt)
  {
    if (paramInt > 3) {}
    for (;;)
    {
      seekTo(paramInt);
      start();
      return;
      paramInt = 0;
    }
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    if (paramUri == null)
    {
      kg.a(3, b, "Video setVideoURI cannot have null value.");
      return;
    }
    f = paramInt;
    e = paramUri;
  }
  
  public void a(String paramString, int paramInt)
  {
    if (paramString == null)
    {
      kg.a(3, b, "Video setVideoURI cannot have null value.");
      return;
    }
    f = paramInt;
    e = Uri.parse(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public void b()
  {
    if (m != null)
    {
      if (h <= 0) {
        break label49;
      }
      m.setStreamVolume(3, h, 0);
    }
    for (;;)
    {
      if (n != null) {
        n.setVolume(1.0F, 1.0F);
      }
      o = false;
      return;
      label49:
      m.setStreamVolume(3, 5, 0);
    }
  }
  
  public boolean c()
  {
    return o;
  }
  
  public boolean d()
  {
    if (l != null) {}
    for (int i1 = 1; (i1 & l.equals(gq.b.f)) != 0; i1 = 0) {
      return true;
    }
    return false;
  }
  
  public boolean e()
  {
    if (l != null) {}
    for (int i1 = 1; (i1 & l.equals(gq.b.e)) != 0; i1 = 0) {
      return true;
    }
    return false;
  }
  
  public boolean f()
  {
    return (l.equals(gq.b.c)) || (l.equals(gq.b.e));
  }
  
  protected void finalize()
  {
    super.finalize();
    if (m != null) {
      m.setStreamVolume(3, h, 0);
    }
  }
  
  public void g()
  {
    pause();
    l();
  }
  
  public int getCurrentPosition()
  {
    try
    {
      int i1 = super.getCurrentPosition();
      if (i1 == 0) {
        return Integer.MIN_VALUE;
      }
      return i1;
    }
    catch (Exception localException)
    {
      kg.a(b, "MediaPlayer current position issue: " + localException.getMessage());
    }
    return Integer.MIN_VALUE;
  }
  
  public int getOffsetStartTime()
  {
    return 3;
  }
  
  public int getVideoLength()
  {
    return getDuration();
  }
  
  public void h()
  {
    l();
  }
  
  public boolean i()
  {
    return p;
  }
  
  public boolean isPlaying()
  {
    return super.isPlaying();
  }
  
  public void j()
  {
    p = false;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    try
    {
      m();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    if (g != Integer.MIN_VALUE) {
      c.g(g);
    }
    super.onDetachedFromWindow();
    pause();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if ((c != null) && (paramInt1 != j) && (paramInt2 != k))
    {
      j = paramInt1;
      k = paramInt2;
      c.a(paramInt1, paramInt2);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    p = true;
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((!paramBoolean) && (g != Integer.MIN_VALUE))
    {
      c.f(g);
      c.e(8);
    }
  }
  
  public void pause()
  {
    super.pause();
    l = gq.b.e;
  }
  
  public void resume()
  {
    super.resume();
    l = gq.b.d;
  }
  
  public void setVideoPath(String paramString)
  {
    super.setVideoPath(paramString);
  }
  
  public void start()
  {
    super.start();
    l = gq.b.d;
  }
  
  public void suspend()
  {
    super.suspend();
    l = gq.b.g;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */