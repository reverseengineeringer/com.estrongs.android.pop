package com.flurry.android.tumblr;

import android.text.TextUtils;
import com.flurry.sdk.ec;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.ly;
import com.flurry.sdk.me;

class Post$1$1
  extends ly
{
  Post$1$1(Post.1 param1, ec paramec, PostListener paramPostListener) {}
  
  public void a()
  {
    switch (Post.2.a[a.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      kg.a(3, Post.h(), "Post success for " + a.c);
      b.onPostSuccess(a.f);
      kc.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.c(c.a));
      me.a().a(Post.a(c.a));
      return;
    }
    String str2 = a.e;
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = "Internal error.";
    }
    kg.a(3, Post.h(), "Post failed for " + a.c + " with error code: " + a.d + "  and error message: " + str1);
    b.onPostFailure(str1);
    kc.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.c(c.a));
    me.a().a(Post.a(c.a));
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.Post.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */