package com.estrongs.android.widget.esswitch;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import java.util.Locale;

public class a
  implements c
{
  private boolean a;
  private Locale b;
  
  public a(Context paramContext)
  {
    b = getResourcesgetConfigurationlocale;
  }
  
  public CharSequence a(CharSequence paramCharSequence, View paramView)
  {
    if (a)
    {
      if (paramCharSequence != null) {
        return paramCharSequence.toString().toUpperCase(b);
      }
      return null;
    }
    Log.w("AllCapsTransformationMethod", "Caller did not enable length changes; not transforming text");
    return paramCharSequence;
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.esswitch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */