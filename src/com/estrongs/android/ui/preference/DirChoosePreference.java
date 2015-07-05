package com.estrongs.android.ui.preference;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.util.AttributeSet;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ah;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.g;

public class DirChoosePreference
  extends EditTextPreference
{
  String a = null;
  private Context b;
  private boolean c = false;
  
  public DirChoosePreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public DirChoosePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842898);
  }
  
  public DirChoosePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b = paramContext;
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.a);
    c = paramContext.getBoolean(0, false);
    paramContext.recycle();
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    if ((a != null) && (callChangeListener(a))) {
      setText(a);
    }
  }
  
  protected void showDialog(Bundle paramBundle)
  {
    if (z.n) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = bool1;
      if (!bool1) {
        bool2 = c;
      }
      paramBundle = new b(this, ad.a(b).p());
      paramBundle = new g((Activity)b, getText(), paramBundle, true, bool2);
      paramBundle.c(b.getString(2131427340), (DialogInterface.OnClickListener)null);
      paramBundle.a(getTitle());
      paramBundle.b(b.getString(2131427339), new c(this, paramBundle));
      paramBundle.a(this);
      paramBundle.j();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.DirChoosePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */