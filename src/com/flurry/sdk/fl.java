package com.flurry.sdk;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.view.Window;

public final class fl
{
  @TargetApi(11)
  public static void a(Window paramWindow)
  {
    if (paramWindow == null) {}
    while (Build.VERSION.SDK_INT < 11) {
      return;
    }
    paramWindow.setFlags(16777216, 16777216);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */