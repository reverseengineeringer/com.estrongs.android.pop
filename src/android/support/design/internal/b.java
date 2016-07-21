package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.design.g;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.x;
import android.support.v7.view.menu.y;
import android.support.v7.view.menu.z;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;

public class b
  implements x
{
  private NavigationMenuView a;
  private LinearLayout b;
  private y c;
  private i d;
  private int e;
  private e f;
  private LayoutInflater g;
  private int h;
  private boolean i;
  private ColorStateList j;
  private ColorStateList k;
  private Drawable l;
  private int m;
  private int n;
  private final View.OnClickListener o = new c(this);
  
  public int a()
  {
    return b.getChildCount();
  }
  
  public z a(ViewGroup paramViewGroup)
  {
    if (a == null)
    {
      a = ((NavigationMenuView)g.inflate(g.design_navigation_menu, paramViewGroup, false));
      if (f == null) {
        f = new e(this);
      }
      b = ((LinearLayout)g.inflate(g.design_navigation_item_header, a, false));
      a.setAdapter(f);
    }
    return a;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    k = paramColorStateList;
    updateMenuView(false);
  }
  
  public void a(Drawable paramDrawable)
  {
    l = paramDrawable;
    updateMenuView(false);
  }
  
  public void a(m paramm)
  {
    f.a(paramm);
  }
  
  public void a(View paramView)
  {
    b.addView(paramView);
    a.setPadding(0, 0, 0, a.getPaddingBottom());
  }
  
  public void a(boolean paramBoolean)
  {
    if (f != null) {
      f.a(paramBoolean);
    }
  }
  
  public ColorStateList b()
  {
    return k;
  }
  
  public View b(int paramInt)
  {
    View localView = g.inflate(paramInt, b, false);
    a(localView);
    return localView;
  }
  
  public void b(ColorStateList paramColorStateList)
  {
    j = paramColorStateList;
    updateMenuView(false);
  }
  
  public ColorStateList c()
  {
    return j;
  }
  
  public void c(int paramInt)
  {
    h = paramInt;
    i = true;
    updateMenuView(false);
  }
  
  public boolean collapseItemActionView(i parami, m paramm)
  {
    return false;
  }
  
  public Drawable d()
  {
    return l;
  }
  
  public void d(int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      if (b.getChildCount() == 0) {
        a.setPadding(0, m, 0, a.getPaddingBottom());
      }
    }
  }
  
  public boolean expandItemActionView(i parami, m paramm)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return e;
  }
  
  public void initForMenu(Context paramContext, i parami)
  {
    g = LayoutInflater.from(paramContext);
    d = parami;
    n = paramContext.getResources().getDimensionPixelOffset(android.support.design.e.design_navigation_separator_vertical_padding);
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (c != null) {
      c.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    SparseArray localSparseArray = paramParcelable.getSparseParcelableArray("android:menu:list");
    if (localSparseArray != null) {
      a.restoreHierarchyState(localSparseArray);
    }
    paramParcelable = paramParcelable.getBundle("android:menu:adapter");
    if (paramParcelable != null) {
      f.a(paramParcelable);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    if (a != null)
    {
      SparseArray localSparseArray = new SparseArray();
      a.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    }
    if (f != null) {
      localBundle.putBundle("android:menu:adapter", f.b());
    }
    return localBundle;
  }
  
  public boolean onSubMenuSelected(ad paramad)
  {
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (f != null) {
      f.a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */