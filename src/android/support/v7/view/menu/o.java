package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.b;
import android.support.v4.view.n;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

@TargetApi(14)
public class o
  extends e<b>
  implements MenuItem
{
  private Method c;
  
  o(Context paramContext, b paramb)
  {
    super(paramContext, paramb);
  }
  
  p a(ActionProvider paramActionProvider)
  {
    return new p(this, a, paramActionProvider);
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (c == null) {
        c = ((b)b).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
      }
      c.invoke(b, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
    }
  }
  
  public boolean collapseActionView()
  {
    return ((b)b).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((b)b).expandActionView();
  }
  
  public ActionProvider getActionProvider()
  {
    n localn = ((b)b).a();
    if ((localn instanceof p)) {
      return a;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = ((b)b).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof q)) {
      localView1 = ((q)localView2).a();
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return ((b)b).getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return ((b)b).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((b)b).getIcon();
  }
  
  public Intent getIntent()
  {
    return ((b)b).getIntent();
  }
  
  public int getItemId()
  {
    return ((b)b).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((b)b).getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return ((b)b).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((b)b).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((b)b).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((b)b).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((b)b).getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return ((b)b).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((b)b).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((b)b).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((b)b).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((b)b).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((b)b).isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    b localb = (b)b;
    if (paramActionProvider != null) {}
    for (paramActionProvider = a(paramActionProvider);; paramActionProvider = null)
    {
      localb.a(paramActionProvider);
      return this;
    }
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((b)b).setActionView(paramInt);
    View localView = ((b)b).getActionView();
    if ((localView instanceof CollapsibleActionView)) {
      ((b)b).setActionView(new q(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView)) {
      localObject = new q(paramView);
    }
    ((b)b).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((b)b).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((b)b).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((b)b).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((b)b).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((b)b).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((b)b).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((b)b).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((b)b).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    b localb = (b)b;
    if (paramOnActionExpandListener != null) {}
    for (paramOnActionExpandListener = new r(this, paramOnActionExpandListener);; paramOnActionExpandListener = null)
    {
      localb.a(paramOnActionExpandListener);
      return this;
    }
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    b localb = (b)b;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new s(this, paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localb.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((b)b).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((b)b).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((b)b).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((b)b).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((b)b).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((b)b).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((b)b).setVisible(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */