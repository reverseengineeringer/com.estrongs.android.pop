package com.estrongs.android.ui.preference.esswitch;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.estrongs.android.pop.ah;
import com.estrongs.android.widget.esswitch.Switch;

public class SwitchPreference
  extends TwoStatePreference
{
  private CharSequence b;
  private CharSequence c;
  private final b d = new b(this, null);
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130771986);
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.f, paramInt, 0);
    c(paramContext.getString(0));
    d(paramContext.getString(1));
    a(paramContext.getString(2));
    b(paramContext.getString(3));
    b(paramContext.getBoolean(4, false));
    paramContext.recycle();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    notifyChanged();
  }
  
  public void b(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    notifyChanged();
  }
  
  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    Object localObject = paramView.findViewById(2131361848);
    if ((localObject != null) && ((localObject instanceof Checkable)))
    {
      ((Checkable)localObject).setChecked(a);
      a((View)localObject);
      if ((localObject instanceof Switch))
      {
        localObject = (Switch)localObject;
        ((Switch)localObject).a(b);
        ((Switch)localObject).b(c);
        ((Switch)localObject).setOnCheckedChangeListener(d);
      }
    }
    b(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.esswitch.SwitchPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */