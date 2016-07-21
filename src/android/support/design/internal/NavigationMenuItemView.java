package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.design.c;
import android.support.design.e;
import android.support.design.f;
import android.support.design.g;
import android.support.v4.b.a.a;
import android.support.v4.widget.cn;
import android.support.v7.view.menu.aa;
import android.support.v7.view.menu.m;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

public class NavigationMenuItemView
  extends ForegroundLinearLayout
  implements aa
{
  private static final int[] c = { 16842912 };
  private final int d;
  private final CheckedTextView e;
  private FrameLayout f;
  private m g;
  private ColorStateList h;
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(g.design_navigation_menu_item, this, true);
    d = paramContext.getResources().getDimensionPixelSize(e.design_navigation_icon_size);
    e = ((CheckedTextView)findViewById(f.design_menu_item_text));
    e.setDuplicateParentStateEnabled(true);
  }
  
  private StateListDrawable c()
  {
    TypedValue localTypedValue = new TypedValue();
    if (getContext().getTheme().resolveAttribute(c.colorControlHighlight, localTypedValue, true))
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(c, new ColorDrawable(data));
      localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      return localStateListDrawable;
    }
    return null;
  }
  
  private void setActionView(View paramView)
  {
    if (f == null) {
      f = ((FrameLayout)((ViewStub)findViewById(f.design_menu_item_action_area_stub)).inflate());
    }
    f.removeAllViews();
    if (paramView != null) {
      f.addView(paramView);
    }
  }
  
  public void a()
  {
    if (f != null) {
      f.removeAllViews();
    }
    e.setCompoundDrawables(null, null, null, null);
  }
  
  public void a(Context paramContext, int paramInt)
  {
    e.setTextAppearance(paramContext, paramInt);
  }
  
  public void a(m paramm, int paramInt)
  {
    g = paramm;
    if (paramm.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      if (getBackground() == null) {
        setBackgroundDrawable(c());
      }
      setCheckable(paramm.isCheckable());
      setChecked(paramm.isChecked());
      setEnabled(paramm.isEnabled());
      setTitle(paramm.getTitle());
      setIcon(paramm.getIcon());
      setActionView(paramm.getActionView());
      return;
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public m getItemData()
  {
    return g;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((g != null) && (g.isCheckable()) && (g.isChecked())) {
      mergeDrawableStates(arrayOfInt, c);
    }
    return arrayOfInt;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
    e.setChecked(paramBoolean);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (paramDrawable != null)
    {
      localObject = paramDrawable.getConstantState();
      if (localObject != null) {
        break label57;
      }
    }
    for (;;)
    {
      localObject = a.f(paramDrawable).mutate();
      ((Drawable)localObject).setBounds(0, 0, d, d);
      a.a((Drawable)localObject, h);
      cn.a(e, (Drawable)localObject, null, null, null);
      return;
      label57:
      paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
    }
  }
  
  void setIconTintList(ColorStateList paramColorStateList)
  {
    h = paramColorStateList;
    if (g != null) {
      setIcon(g.getIcon());
    }
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    e.setTextColor(paramColorStateList);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    e.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.NavigationMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */