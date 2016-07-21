package com.facebook.ads.internal.view;

import android.content.Context;
import android.net.Uri;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;

public class h
  extends LinearLayout
{
  private MediaController a;
  private VideoView b;
  
  public h(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  private void b()
  {
    a = new MediaController(getContext());
    b = new VideoView(getContext());
    a.setAnchorView(this);
    b.setMediaController(a);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(11, -1);
    localLayoutParams.addRule(9, -1);
    localLayoutParams.addRule(10, -1);
    localLayoutParams.addRule(12, -1);
    localLayoutParams.addRule(13);
    b.setLayoutParams(localLayoutParams);
    addView(b);
  }
  
  public void a()
  {
    b.start();
  }
  
  public void setVideoURI(Uri paramUri)
  {
    if (paramUri != null) {
      b.setVideoURI(paramUri);
    }
  }
  
  public void setVideoURI(String paramString)
  {
    if (paramString != null) {
      setVideoURI(Uri.parse(paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */