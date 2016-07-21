package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.VideoView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.util.ao;
import com.estrongs.android.widget.FullScrnVideoLayout;

public class fy
  extends WebChromeClient
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  Runnable a = new ga(this);
  final Rect b = new Rect();
  View.OnTouchListener c = new gb(this);
  private View d;
  private ViewGroup e;
  private View f;
  private VideoEnabledWebView g;
  private View h;
  private boolean i;
  private FrameLayout j;
  private WebChromeClient.CustomViewCallback k;
  private gc l;
  private String m = null;
  private WindowManager.LayoutParams n = null;
  private Handler o = new Handler();
  
  private fy() {}
  
  public fy(View paramView1, ViewGroup paramViewGroup, View paramView2, VideoEnabledWebView paramVideoEnabledWebView)
  {
    d = paramView1;
    e = paramViewGroup;
    f = paramView2;
    g = paramVideoEnabledWebView;
    i = false;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    cv localcv = new cv(paramContext);
    localcv.a(paramString);
    String str1 = paramContext.getString(2131230883);
    String str2 = paramContext.getString(2131230892);
    paramContext = new fz(paramContext, paramString);
    localcv.a(new String[] { str1, str2 }, -1, paramContext);
    localcv.d(false).c();
  }
  
  private void c()
  {
    if (h == null)
    {
      h = new ImageView(e.getContext());
      h.setClickable(true);
      h.setBackgroundResource(2130838453);
      h.setOnTouchListener(c);
      n = new WindowManager.LayoutParams();
      n.width = -2;
      n.height = -2;
      n.format = -2;
      n.flags = 40;
      n.gravity = 53;
      localObject = n;
      n.y = 30;
      x = 30;
    }
    Object localObject = (WindowManager)h.getContext().getSystemService("window");
    ViewGroup localViewGroup = (ViewGroup)h.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(h);
    }
    ((WindowManager)localObject).addView(h, n);
  }
  
  private void d()
  {
    if (h != null)
    {
      ((WindowManager)h.getContext().getSystemService("window")).removeView(h);
      h = null;
    }
  }
  
  public void a(String paramString)
  {
    m = paramString;
  }
  
  public boolean a()
  {
    return i;
  }
  
  public boolean b()
  {
    if (i)
    {
      onHideCustomView();
      return true;
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public View getVideoLoadingProgressView()
  {
    if (f != null)
    {
      f.setVisibility(0);
      return f;
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
    if (i)
    {
      e.setVisibility(4);
      e.removeView(j);
      d.setVisibility(0);
      ((FullScrnVideoLayout)e).setTouchListener(null);
      d();
      if (k != null) {
        k.onCustomViewHidden();
      }
      i = false;
      j = null;
      k = null;
      if (l != null) {
        l.a(false);
      }
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
      if (localFileExplorerActivity != null)
      {
        A.a = true;
        A.postInvalidate();
      }
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (f != null) {
      f.setVisibility(8);
    }
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    onShowCustomView(paramView, paramCustomViewCallback);
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    if ((paramView instanceof FrameLayout))
    {
      paramView = (FrameLayout)paramView;
      View localView = paramView.getFocusedChild();
      i = true;
      j = paramView;
      k = paramCustomViewCallback;
      d.setVisibility(4);
      e.addView(j, 0, new ViewGroup.LayoutParams(-1, -1));
      e.setVisibility(0);
      e.setEnabled(true);
      e.setClickable(true);
      ((FullScrnVideoLayout)e).setTouchListener(c);
      c();
      if (!(localView instanceof VideoView)) {
        break label198;
      }
      paramView = (VideoView)localView;
      paramView.setOnPreparedListener(this);
      paramView.setOnCompletionListener(this);
      paramView.setOnErrorListener(this);
      paramView = new ao(paramView).b("mUri");
      if (paramView != null) {
        a(paramView.toString());
      }
    }
    for (;;)
    {
      if (l != null) {
        l.a(true);
      }
      paramView = FileExplorerActivity.X();
      if (paramView != null)
      {
        A.a = false;
        A.postInvalidate();
      }
      return;
      label198:
      if ((g != null) && (g.getSettings().getJavaScriptEnabled()))
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
        g.loadUrl(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */