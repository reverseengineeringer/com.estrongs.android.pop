package com.flurry.sdk;

import android.os.Bundle;

public class eu
{
  private static final String a = eu.class.getName();
  
  public static et a(Bundle paramBundle)
  {
    if (c(paramBundle)) {
      return new es(paramBundle);
    }
    if (b(paramBundle)) {
      return new ev(paramBundle);
    }
    kg.a(6, a, "This cannot happen. Its neither text or image post. lets move back.");
    return null;
  }
  
  private static boolean b(Bundle paramBundle)
  {
    return paramBundle.getBoolean("com.flurry.android.is_text_post", false);
  }
  
  private static boolean c(Bundle paramBundle)
  {
    return paramBundle.getBoolean("com.flurry.android.is_image_post", false);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */