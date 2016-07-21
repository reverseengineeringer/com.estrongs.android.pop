package com.flurry.android.tumblr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.flurry.sdk.em;
import com.flurry.sdk.fi;
import com.flurry.sdk.hc;
import com.flurry.sdk.hl;
import com.flurry.sdk.js;
import com.flurry.sdk.kg;
import com.flurry.sdk.me;
import java.util.HashMap;

public class TumblrShare
{
  private static final String a = TumblrShare.class.getName();
  
  public static Bitmap getTumblrImage()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return null;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized.");
    }
    hc localhc = new hc();
    localhc.x();
    return localhc.o();
  }
  
  public static void post(Context paramContext, Post paramPost)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before posting on Tumblr");
    }
    if (paramContext == null) {
      throw new IllegalArgumentException("Context cannot be null.");
    }
    if (!(paramContext instanceof Activity)) {
      throw new IllegalArgumentException("Context cannot be null.");
    }
    if (paramPost == null) {
      throw new IllegalArgumentException("Post object cannot be null.");
    }
    if (TextUtils.isEmpty(em.a())) {
      throw new IllegalArgumentException("Consumer api key cannot be null or empty. Please set consumer key using setOAuthConfig().");
    }
    if (TextUtils.isEmpty(em.b())) {
      throw new IllegalArgumentException("Consumer secret cannot be null or empty. Please set consumer secret using setOAuthConfig().");
    }
    hl.a().b("ShareClick", paramPost.d(), new HashMap());
    me.a().a(paramPost.g(), paramPost);
    fi.a(paramContext, paramPost.c());
  }
  
  public static void setOAuthConfig(String paramString1, String paramString2)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("Consumer api key cannot be null or empty.");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("Consumer secret cannot be null or empty.");
    }
    em.a(paramString1);
    em.b(paramString2);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.TumblrShare
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */