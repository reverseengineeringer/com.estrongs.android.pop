package com.flurry.android.tumblr;

import android.os.Bundle;
import com.flurry.sdk.ec;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class Post
{
  private static final String a = Post.class.getName();
  private static AtomicInteger g = new AtomicInteger(0);
  private String b;
  private String c;
  private String d;
  private PostListener e;
  private int f = 0;
  private final kb<ec> h = new Post.1(this);
  
  Post()
  {
    kc.a().a("com.flurry.android.impl.analytics.tumblr.TumblrEvents", h);
  }
  
  abstract Bundle c();
  
  String d()
  {
    return c;
  }
  
  String e()
  {
    return b;
  }
  
  String f()
  {
    return d;
  }
  
  int g()
  {
    return f;
  }
  
  public void setAndroidDeeplink(String paramString)
  {
    c = paramString;
  }
  
  public void setIOSDeepLink(String paramString)
  {
    b = paramString;
  }
  
  public void setPostListener(PostListener paramPostListener)
  {
    e = paramPostListener;
  }
  
  public void setWebLink(String paramString)
  {
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.Post
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */