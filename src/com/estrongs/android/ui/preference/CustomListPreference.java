package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.preference.ListPreference;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

public class CustomListPreference
  extends ListPreference
{
  private ci a;
  private int b;
  
  public CustomListPreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public CustomListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private int b()
  {
    return findIndexOfValue(getValue());
  }
  
  public CharSequence a(String paramString)
  {
    int i = findIndexOfValue(paramString);
    if (i > -1)
    {
      paramString = getEntries();
      if ((paramString != null) && (i < paramString.length)) {
        return paramString[i];
      }
    }
    return null;
  }
  
  protected void a(cv paramcv)
  {
    if ((getEntries() == null) || (getEntries() == null)) {
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    }
    b = b();
    paramcv.a(getEntries(), b, new a(this));
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public Dialog getDialog()
  {
    return a;
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    if ((paramBoolean) && (b >= 0) && (getEntryValues() != null))
    {
      String str = getEntryValues()[b].toString();
      if (callChangeListener(str)) {
        setValue(str);
      }
    }
  }
  
  protected void showDialog(Bundle paramBundle)
  {
    Object localObject = new cv(getContext()).a(getDialogTitle());
    View localView = onCreateDialogView();
    if (localView != null)
    {
      onBindDialogView(localView);
      ((cv)localObject).a(localView);
    }
    for (;;)
    {
      a((cv)localObject);
      localObject = ((cv)localObject).b();
      a = ((ci)localObject);
      if (paramBundle != null) {
        ((ci)localObject).onRestoreInstanceState(paramBundle);
      }
      if (a()) {
        ((ci)localObject).requestInputMethod();
      }
      ((ci)localObject).setOnDismissListener(this);
      ((ci)localObject).show();
      return;
      ((cv)localObject).b(getDialogMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.CustomListPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */