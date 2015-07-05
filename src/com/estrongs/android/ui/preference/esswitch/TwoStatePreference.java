package com.estrongs.android.ui.preference.esswitch;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import com.estrongs.android.util.h;
import java.lang.reflect.Field;

public abstract class TwoStatePreference
  extends Preference
{
  private static int b;
  boolean a;
  private CharSequence c;
  private CharSequence d;
  private boolean e;
  private boolean f;
  
  static
  {
    try
    {
      b = Integer.parseInt(Class.forName("com.android.internal.R$id").getField("summary").get(null).toString());
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
    }
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  void a(View paramView)
  {
    try
    {
      Object localObject1 = AccessibilityManager.class.getName();
      Object localObject2 = getContext();
      localObject1 = (AccessibilityManager)h.a((String)localObject1, "getInstance", new Class[] { Context.class }, new Object[] { localObject2 });
      if ((e) && (((AccessibilityManager)localObject1).isEnabled()))
      {
        localObject2 = AccessibilityEvent.obtain();
        ((AccessibilityEvent)localObject2).setEventType(1);
        paramView.dispatchPopulateAccessibilityEvent((AccessibilityEvent)localObject2);
        ((AccessibilityManager)localObject1).sendAccessibilityEvent((AccessibilityEvent)localObject2);
      }
      e = false;
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (a != paramBoolean)
    {
      a = paramBoolean;
      persistBoolean(paramBoolean);
      notifyDependencyChange(shouldDisableDependents());
      notifyChanged();
    }
  }
  
  public boolean a()
  {
    return a;
  }
  
  void b(View paramView)
  {
    int j = 0;
    paramView = (TextView)paramView.findViewById(b);
    int k;
    int i;
    if (paramView != null)
    {
      k = 1;
      if ((!a) || (c == null)) {
        break label87;
      }
      paramView.setText(c);
      i = 0;
      if (i == 0) {
        break label126;
      }
      CharSequence localCharSequence = getSummary();
      if (localCharSequence == null) {
        break label126;
      }
      paramView.setText(localCharSequence);
      i = 0;
    }
    label87:
    label126:
    for (;;)
    {
      if (i == 0) {}
      for (i = j;; i = 8)
      {
        if (i != paramView.getVisibility()) {
          paramView.setVisibility(i);
        }
        return;
        i = k;
        if (a) {
          break;
        }
        i = k;
        if (d == null) {
          break;
        }
        paramView.setText(d);
        i = 0;
        break;
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void c(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    if (a()) {
      notifyChanged();
    }
  }
  
  public void d(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    if (!a()) {
      notifyChanged();
    }
  }
  
  protected void onClick()
  {
    super.onClick();
    if (!a()) {}
    for (boolean bool = true;; bool = false)
    {
      e = true;
      if (callChangeListener(Boolean.valueOf(bool))) {
        break;
      }
      return;
    }
    a(bool);
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return Boolean.valueOf(paramTypedArray.getBoolean(paramInt, false));
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(TwoStatePreference.SavedState.class)))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (TwoStatePreference.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (isPersistent()) {
      return (Parcelable)localObject;
    }
    localObject = new TwoStatePreference.SavedState((Parcelable)localObject);
    a = a();
    return (Parcelable)localObject;
  }
  
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean) {}
    for (paramBoolean = getPersistedBoolean(a);; paramBoolean = ((Boolean)paramObject).booleanValue())
    {
      a(paramBoolean);
      return;
    }
  }
  
  public boolean shouldDisableDependents()
  {
    boolean bool2 = false;
    boolean bool1;
    if (f) {
      bool1 = a;
    }
    for (;;)
    {
      if (!bool1)
      {
        bool1 = bool2;
        if (!super.shouldDisableDependents()) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
      if (!a) {
        bool1 = true;
      } else {
        bool1 = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.esswitch.TwoStatePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */