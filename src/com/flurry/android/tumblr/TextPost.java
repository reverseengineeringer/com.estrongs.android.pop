package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;

public class TextPost
  extends Post
{
  private String a;
  private String b;
  
  public TextPost(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Body to post cannot be null or empty");
    }
    b = paramString;
  }
  
  String a()
  {
    return a;
  }
  
  String b()
  {
    return b;
  }
  
  Bundle c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("com.flurry.android.post_title", a());
    localBundle.putString("com.flurry.android.post_body", b());
    localBundle.putString("com.flurry.android.post_ios_deeplinks", e());
    localBundle.putString("com.flurry.android.post_android_deeplinks", d());
    localBundle.putString("com.flurry.android.post_weblink", f());
    localBundle.putBoolean("com.flurry.android.is_text_post", true);
    localBundle.putInt("com.flurry.android.post_id", g());
    return localBundle;
  }
  
  public void setTitle(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.TextPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */