package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.util.al;

public class dt
  extends WebChromeClient
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  Runnable a = new dv(this);
  View.OnTouchListener b = new dw(this);
  private View c;
  private ViewGroup d;
  private View e;
  private VideoEnabledWebView f;
  private boolean g;
  private FrameLayout h;
  private WebChromeClient.CustomViewCallback i;
  private dx j;
  private String k = null;
  private Handler l = new Handler();
  
  public dt() {}
  
  public dt(View paramView1, ViewGroup paramViewGroup, View paramView2, VideoEnabledWebView paramVideoEnabledWebView)
  {
    c = paramView1;
    d = paramViewGroup;
    e = paramView2;
    f = paramVideoEnabledWebView;
    g = false;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    ct localct = new ct(paramContext);
    localct.a(paramString);
    String str1 = paramContext.getString(2131427345);
    String str2 = paramContext.getString(2131427388);
    paramContext = new du(paramContext, paramString);
    localct.a(new String[] { str1, str2 }, -1, paramContext);
    localct.d(false).c();
  }
  
  public void a(String paramString)
  {
    k = paramString;
  }
  
  public boolean a()
  {
    return g;
  }
  
  public boolean b()
  {
    if (g)
    {
      onHideCustomView();
      return true;
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public View getVideoLoadingProgressView()
  {
    if (e != null)
    {
      e.setVisibility(0);
      return e;
    }
    return super.getVideoLoadingProgressView();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    onHideCustomView();
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public void onHideCustomView()
  {
    if (g)
    {
      d.setVisibility(4);
      d.removeView(h);
      c.setVisibility(0);
      if (i != null) {
        i.onCustomViewHidden();
      }
      g = false;
      h = null;
      i = null;
      if (j != null) {
        j.a(false);
      }
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
      if (localFileExplorerActivity != null)
      {
        E.b = false;
        E.a = true;
        E.postInvalidate();
      }
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (e != null) {
      e.setVisibility(8);
    }
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    onShowCustomView(paramView, paramCustomViewCallback);
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    paramView.setOnTouchListener(b);
    if ((paramView instanceof FrameLayout))
    {
      paramView = (FrameLayout)paramView;
      View localView = paramView.getFocusedChild();
      g = true;
      h = paramView;
      i = paramCustomViewCallback;
      c.setVisibility(4);
      d.addView(h, new ViewGroup.LayoutParams(-1, -1));
      d.setVisibility(0);
      if (!(localView instanceof VideoView)) {
        break label178;
      }
      paramView = (VideoView)localView;
      paramView.setOnPreparedListener(this);
      paramView.setOnCompletionListener(this);
      paramView.setOnErrorListener(this);
      paramView = new al(paramView).b("mUri");
      if (paramView != null) {
        a(paramView.toString());
      }
    }
    for (;;)
    {
      if (j != null) {
        j.a(true);
      }
      paramView = FileExplorerActivity.J();
      if (paramView != null)
      {
        E.b = true;
        E.a = false;
        E.postInvalidate();
      }
      return;
      label178:
      if ((f != null) && (f.getSettings().getJavaScriptEnabled()))
      {
        paramView = "javascript:" + "_ytrp_html5_video = document.getElementsByTagName('video')[0];";
        paramView = paramView + "if (_ytrp_html5_video !== undefined) {";
        paramView = paramView + "JSVideoFullScreenHelper.setVideoSource(_ytrp_html5_video.currentSrc);";
        paramView = paramView + "function _ytrp_html5_video_ended() {";
        paramView = paramView + "_ytrp_html5_video.removeEventListener('ended', _ytrp_html5_video_ended);";
        paramView = paramView + "_VideoEnabledWebView.notifyVideoEnd();";
        paramView = paramView + "}";
        paramView = paramView + "_ytrp_html5_video.addEventListener('ended', _ytrp_html5_video_ended);";
        paramView = paramView + "} else { ";
        paramView = paramView + "JSVideoFullScreenHelper.setVideoSource('');";
        paramView = paramView + "}";
        f.loadUrl(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */