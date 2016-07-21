package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.design.c;
import android.support.design.i;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.design.internal.b;
import android.support.design.j;
import android.support.v4.view.cn;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.m;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;

public class NavigationView
  extends ScrimInsetsFrameLayout
{
  private static final int[] a = { 16842912 };
  private static final int[] b = { -16842910 };
  private final android.support.design.internal.a c;
  private final b d = new b();
  private ax e;
  private int f;
  private MenuInflater g;
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cr.a(paramContext);
    c = new android.support.design.internal.a(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, j.NavigationView, paramInt, i.Widget_Design_NavigationView);
    setBackgroundDrawable(localTypedArray.getDrawable(j.NavigationView_android_background));
    if (localTypedArray.hasValue(j.NavigationView_elevation)) {
      cn.l(this, localTypedArray.getDimensionPixelSize(j.NavigationView_elevation, 0));
    }
    cn.a(this, localTypedArray.getBoolean(j.NavigationView_android_fitsSystemWindows, false));
    f = localTypedArray.getDimensionPixelSize(j.NavigationView_android_maxWidth, 0);
    ColorStateList localColorStateList;
    if (localTypedArray.hasValue(j.NavigationView_itemIconTint))
    {
      localColorStateList = localTypedArray.getColorStateList(j.NavigationView_itemIconTint);
      if (!localTypedArray.hasValue(j.NavigationView_itemTextAppearance)) {
        break label376;
      }
      paramInt = localTypedArray.getResourceId(j.NavigationView_itemTextAppearance, 0);
    }
    for (int i = 1;; i = 0)
    {
      paramAttributeSet = null;
      if (localTypedArray.hasValue(j.NavigationView_itemTextColor)) {
        paramAttributeSet = localTypedArray.getColorStateList(j.NavigationView_itemTextColor);
      }
      Object localObject = paramAttributeSet;
      if (i == 0)
      {
        localObject = paramAttributeSet;
        if (paramAttributeSet == null) {
          localObject = c(16842806);
        }
      }
      paramAttributeSet = localTypedArray.getDrawable(j.NavigationView_itemBackground);
      c.a(new aw(this));
      d.a(1);
      d.initForMenu(paramContext, c);
      d.a(localColorStateList);
      if (i != 0) {
        d.c(paramInt);
      }
      d.b((ColorStateList)localObject);
      d.a(paramAttributeSet);
      c.a(d);
      addView((View)d.a(this));
      if (localTypedArray.hasValue(j.NavigationView_menu)) {
        a(localTypedArray.getResourceId(j.NavigationView_menu, 0));
      }
      if (localTypedArray.hasValue(j.NavigationView_headerLayout)) {
        b(localTypedArray.getResourceId(j.NavigationView_headerLayout, 0));
      }
      localTypedArray.recycle();
      return;
      localColorStateList = c(16842808);
      break;
      label376:
      paramInt = 0;
    }
  }
  
  private ColorStateList c(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {}
    ColorStateList localColorStateList;
    do
    {
      return null;
      localColorStateList = getResources().getColorStateList(resourceId);
    } while (!getContext().getTheme().resolveAttribute(c.colorPrimary, (TypedValue)localObject, true));
    paramInt = data;
    int i = localColorStateList.getDefaultColor();
    localObject = b;
    int[] arrayOfInt1 = a;
    int[] arrayOfInt2 = EMPTY_STATE_SET;
    int j = localColorStateList.getColorForState(b, i);
    return new ColorStateList(new int[][] { localObject, arrayOfInt1, arrayOfInt2 }, new int[] { j, paramInt, i });
  }
  
  private MenuInflater getMenuInflater()
  {
    if (g == null) {
      g = new SupportMenuInflater(getContext());
    }
    return g;
  }
  
  public void a(int paramInt)
  {
    d.a(true);
    getMenuInflater().inflate(paramInt, c);
    d.a(false);
    d.updateMenuView(false);
  }
  
  protected void a(Rect paramRect)
  {
    d.d(top);
  }
  
  public View b(int paramInt)
  {
    return d.b(paramInt);
  }
  
  public int getHeaderCount()
  {
    return d.a();
  }
  
  public Drawable getItemBackground()
  {
    return d.d();
  }
  
  public ColorStateList getItemIconTintList()
  {
    return d.b();
  }
  
  public ColorStateList getItemTextColor()
  {
    return d.c();
  }
  
  public Menu getMenu()
  {
    return c;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      i = paramInt1;
    }
    for (;;)
    {
      super.onMeasure(i, paramInt2);
      return;
      i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), f), 1073741824);
      continue;
      i = View.MeasureSpec.makeMeasureSpec(f, 1073741824);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (NavigationView.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    c.b(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    NavigationView.SavedState localSavedState = new NavigationView.SavedState(super.onSaveInstanceState());
    a = new Bundle();
    c.a(a);
    return localSavedState;
  }
  
  public void setCheckedItem(int paramInt)
  {
    MenuItem localMenuItem = c.findItem(paramInt);
    if (localMenuItem != null) {
      d.a((m)localMenuItem);
    }
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    d.a(paramDrawable);
  }
  
  public void setItemBackgroundResource(int paramInt)
  {
    setItemBackground(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    d.a(paramColorStateList);
  }
  
  public void setItemTextAppearance(int paramInt)
  {
    d.c(paramInt);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    d.b(paramColorStateList);
  }
  
  public void setNavigationItemSelectedListener(ax paramax)
  {
    e = paramax;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.NavigationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */