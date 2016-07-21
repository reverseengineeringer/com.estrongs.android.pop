package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class dy
{
  public static void a()
  {
    b(new eg("", ""));
  }
  
  public static void a(eg parameg)
  {
    b(parameg);
  }
  
  public static eg b()
  {
    eg localeg2 = c();
    eg localeg1 = localeg2;
    if (localeg2 == null)
    {
      localeg1 = new eg("", "");
      b(localeg1);
    }
    return localeg1;
  }
  
  private static void b(eg parameg)
  {
    SharedPreferences.Editor localEditor = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putString("com.flurry.sdk.request_token", parameg.a());
    localEditor.putString("com.flurry.sdk.request_secret", parameg.b());
    localEditor.apply();
  }
  
  private static eg c()
  {
    SharedPreferences localSharedPreferences = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
    return new eg(localSharedPreferences.getString("com.flurry.sdk.request_token", ""), localSharedPreferences.getString("com.flurry.sdk.request_secret", ""));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */