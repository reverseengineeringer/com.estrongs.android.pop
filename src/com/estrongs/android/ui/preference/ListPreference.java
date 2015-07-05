package com.estrongs.android.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import com.estrongs.android.ui.dialog.cg;

public class ListPreference
  extends DialogPreference
{
  public static final int[] a = { 16842930, 16843256 };
  private CharSequence[] b;
  private CharSequence[] c;
  private String d;
  private int e;
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a, 0, 0);
    b = paramContext.getTextArray(0);
    c = paramContext.getTextArray(1);
    paramContext.recycle();
  }
  
  private int b()
  {
    return b(d);
  }
  
  public String a()
  {
    return d;
  }
  
  public void a(String paramString)
  {
    d = paramString;
    persistString(paramString);
  }
  
  public void a(CharSequence[] paramArrayOfCharSequence)
  {
    b = paramArrayOfCharSequence;
  }
  
  public int b(String paramString)
  {
    if ((paramString != null) && (c != null))
    {
      int i = c.length - 1;
      while (i >= 0)
      {
        if (c[i].equals(paramString)) {
          return i;
        }
        i -= 1;
      }
    }
    return -1;
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    super.onDialogClosed(paramBoolean);
    if ((paramBoolean) && (e >= 0) && (c != null))
    {
      String str = c[e].toString();
      if (callChangeListener(str)) {
        a(str);
      }
    }
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(ListPreference.SavedState.class)))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ListPreference.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (isPersistent()) {
      return (Parcelable)localObject;
    }
    localObject = new ListPreference.SavedState((Parcelable)localObject);
    a = a();
    return (Parcelable)localObject;
  }
  
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean) {}
    for (paramObject = getPersistedString(d);; paramObject = (String)paramObject)
    {
      a((String)paramObject);
      return;
    }
  }
  
  protected void showDialog(Bundle paramBundle)
  {
    if ((b == null) || (c == null)) {
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    }
    e = b();
    paramBundle = new cg(getContext());
    paramBundle.setTitle(getDialogTitle());
    paramBundle.setSelectable(true);
    paramBundle.setItems(b, e, new r(this));
    paramBundle.setOnDismissListener(this);
    paramBundle.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.ListPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */