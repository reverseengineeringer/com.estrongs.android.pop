package com.estrongs.android.ui.base;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ax;
import android.support.v7.app.ActionBar;
import android.support.v7.view.menu.d;
import android.support.v7.view.menu.y;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.an;
import com.estrongs.android.ui.e.km;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.a.a;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

public class HomeAsBackActivity
  extends ESActivity
{
  private boolean a;
  private Hashtable<Integer, MenuItem.OnMenuItemClickListener> b = new Hashtable();
  private List<a> c = new ArrayList();
  private km d;
  private LinearLayout e;
  
  private void d()
  {
    if (d == null)
    {
      d = new km(this, true);
      e.addView(d.a(), new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(2131165248)));
      d.a().setBackgroundResource(2130838523);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        d.a(locala);
        locala.d(locala.isEnabled());
      }
    }
    if (c.size() > 0)
    {
      d.a().setVisibility(0);
      return;
    }
    d.a().setVisibility(8);
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 118	com/estrongs/android/ui/base/HomeAsBackActivity:getSupportActionBar	()Landroid/support/v7/app/ActionBar;
    //   4: astore_1
    //   5: aload_1
    //   6: invokevirtual 124	java/lang/Object:getClass	()Ljava/lang/Class;
    //   9: ldc 126
    //   11: invokevirtual 132	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   14: astore_2
    //   15: aload_2
    //   16: iconst_1
    //   17: invokevirtual 138	java/lang/reflect/Field:setAccessible	(Z)V
    //   20: aload_2
    //   21: aload_1
    //   22: invokevirtual 142	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 144	android/support/v7/widget/ToolbarWidgetWrapper
    //   28: astore_1
    //   29: aload_1
    //   30: invokevirtual 124	java/lang/Object:getClass	()Ljava/lang/Class;
    //   33: ldc -110
    //   35: invokevirtual 132	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   38: astore_2
    //   39: aload_2
    //   40: iconst_1
    //   41: invokevirtual 138	java/lang/reflect/Field:setAccessible	(Z)V
    //   44: aload_2
    //   45: aload_1
    //   46: invokevirtual 142	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   49: checkcast 148	android/support/v7/view/menu/d
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 152	android/support/v7/view/menu/d:getCallback	()Landroid/support/v7/view/menu/y;
    //   57: astore_2
    //   58: aload_2
    //   59: instanceof 154
    //   62: ifne +16 -> 78
    //   65: aload_1
    //   66: new 154	com/estrongs/android/ui/base/c
    //   69: dup
    //   70: aload_2
    //   71: aload_1
    //   72: invokespecial 157	com/estrongs/android/ui/base/c:<init>	(Landroid/support/v7/view/menu/y;Landroid/support/v7/view/menu/x;)V
    //   75: invokevirtual 161	android/support/v7/view/menu/d:setCallback	(Landroid/support/v7/view/menu/y;)V
    //   78: return
    //   79: astore_1
    //   80: aload_1
    //   81: invokevirtual 164	java/lang/NoSuchFieldException:printStackTrace	()V
    //   84: return
    //   85: astore_1
    //   86: aload_1
    //   87: invokevirtual 164	java/lang/NoSuchFieldException:printStackTrace	()V
    //   90: return
    //   91: astore_1
    //   92: aload_1
    //   93: invokevirtual 165	java/lang/IllegalAccessException:printStackTrace	()V
    //   96: return
    //   97: astore_1
    //   98: aload_1
    //   99: invokevirtual 165	java/lang/IllegalAccessException:printStackTrace	()V
    //   102: return
    //   103: astore_1
    //   104: aload_1
    //   105: invokevirtual 166	java/lang/IllegalArgumentException:printStackTrace	()V
    //   108: return
    //   109: astore_1
    //   110: aload_1
    //   111: invokevirtual 166	java/lang/IllegalArgumentException:printStackTrace	()V
    //   114: return
    //   115: astore_1
    //   116: aload_1
    //   117: invokevirtual 167	java/lang/NullPointerException:printStackTrace	()V
    //   120: return
    //   121: astore_1
    //   122: aload_1
    //   123: invokevirtual 167	java/lang/NullPointerException:printStackTrace	()V
    //   126: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	HomeAsBackActivity
    //   4	68	1	localObject1	Object
    //   79	2	1	localNoSuchFieldException1	NoSuchFieldException
    //   85	2	1	localNoSuchFieldException2	NoSuchFieldException
    //   91	2	1	localIllegalAccessException1	IllegalAccessException
    //   97	2	1	localIllegalAccessException2	IllegalAccessException
    //   103	2	1	localIllegalArgumentException1	IllegalArgumentException
    //   109	2	1	localIllegalArgumentException2	IllegalArgumentException
    //   115	2	1	localNullPointerException1	NullPointerException
    //   121	2	1	localNullPointerException2	NullPointerException
    //   14	57	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   29	78	79	java/lang/NoSuchFieldException
    //   0	29	85	java/lang/NoSuchFieldException
    //   80	84	85	java/lang/NoSuchFieldException
    //   92	96	85	java/lang/NoSuchFieldException
    //   104	108	85	java/lang/NoSuchFieldException
    //   116	120	85	java/lang/NoSuchFieldException
    //   29	78	91	java/lang/IllegalAccessException
    //   0	29	97	java/lang/IllegalAccessException
    //   80	84	97	java/lang/IllegalAccessException
    //   92	96	97	java/lang/IllegalAccessException
    //   104	108	97	java/lang/IllegalAccessException
    //   116	120	97	java/lang/IllegalAccessException
    //   29	78	103	java/lang/IllegalArgumentException
    //   0	29	109	java/lang/IllegalArgumentException
    //   80	84	109	java/lang/IllegalArgumentException
    //   92	96	109	java/lang/IllegalArgumentException
    //   104	108	109	java/lang/IllegalArgumentException
    //   116	120	109	java/lang/IllegalArgumentException
    //   29	78	115	java/lang/NullPointerException
    //   0	29	121	java/lang/NullPointerException
    //   80	84	121	java/lang/NullPointerException
    //   92	96	121	java/lang/NullPointerException
    //   104	108	121	java/lang/NullPointerException
    //   116	120	121	java/lang/NullPointerException
  }
  
  protected ActionBar a()
  {
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setBackgroundDrawable(J().a(2131558516));
    return localActionBar;
  }
  
  protected void a(int paramInt, a parama)
  {
    b.put(Integer.valueOf(paramInt), parama.c());
  }
  
  protected void a(ActionMenuView paramActionMenuView)
  {
    try
    {
      Object localObject = ActionMenuView.class.getDeclaredField("mPresenter");
      ((Field)localObject).setAccessible(true);
      paramActionMenuView = (d)((Field)localObject).get(paramActionMenuView);
      localObject = paramActionMenuView.getCallback();
      if (!(localObject instanceof c)) {
        paramActionMenuView.setCallback(new c((y)localObject, paramActionMenuView));
      }
      return;
    }
    catch (NoSuchFieldException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (NullPointerException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
    }
  }
  
  protected void a(Toolbar paramToolbar)
  {
    try
    {
      Field localField = Toolbar.class.getDeclaredField("mMenuView");
      localField.setAccessible(true);
      a((ActionMenuView)localField.get(paramToolbar));
      return;
    }
    catch (NoSuchFieldException paramToolbar)
    {
      paramToolbar.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramToolbar)
    {
      paramToolbar.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramToolbar)
    {
      paramToolbar.printStackTrace();
      return;
    }
    catch (NullPointerException paramToolbar)
    {
      paramToolbar.printStackTrace();
    }
  }
  
  protected void a(List<a> paramList) {}
  
  protected boolean b()
  {
    return J().o();
  }
  
  protected boolean c()
  {
    return true;
  }
  
  protected int g()
  {
    return 2130838592;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (c()) {
      getWindow().setBackgroundDrawable(J().h());
    }
    an.a(this);
    a = b();
    a(c);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (c != null) {
      if (a)
      {
        Iterator localIterator = c.iterator();
        int i = 1000;
        if (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          if (locala.getTitle() == null) {}
          for (MenuItem localMenuItem = paramMenu.add(0, i, 0, locala.a());; localMenuItem = paramMenu.add(0, i, 0, locala.getTitle()))
          {
            Drawable localDrawable2 = locala.getIcon();
            Drawable localDrawable1 = localDrawable2;
            if (localDrawable2 == null) {
              localDrawable1 = J().g(locala.b());
            }
            localMenuItem.setIcon(localDrawable1);
            localMenuItem.setEnabled(locala.isEnabled());
            localMenuItem.setVisible(locala.isVisible());
            ax.a(localMenuItem, 10);
            a(i, locala);
            i += 1;
            break;
          }
        }
      }
      else
      {
        d();
      }
    }
    if (paramMenu.size() > 0) {
      e();
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      finish();
      return true;
    }
    MenuItem.OnMenuItemClickListener localOnMenuItemClickListener = (MenuItem.OnMenuItemClickListener)b.get(Integer.valueOf(paramMenuItem.getItemId()));
    if (localOnMenuItemClickListener != null)
    {
      localOnMenuItemClickListener.onMenuItemClick(paramMenuItem);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onStart()
  {
    super.onStart();
    ActionBar localActionBar = a();
    localActionBar.setDisplayShowHomeEnabled(true);
    localActionBar.setHomeButtonEnabled(true);
    localActionBar.setDisplayHomeAsUpEnabled(true);
    localActionBar.setHomeAsUpIndicator(g());
  }
  
  public void setContentView(int paramInt)
  {
    if (a)
    {
      super.setContentView(paramInt);
      return;
    }
    View localView = LayoutInflater.from(this).inflate(paramInt, null);
    e = new LinearLayout(this);
    e.setOrientation(1);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
    e.addView(localView, localLayoutParams);
    super.setContentView(e);
  }
  
  public void setContentView(View paramView)
  {
    if (a)
    {
      super.setContentView(paramView);
      return;
    }
    e = new LinearLayout(this);
    e.setOrientation(1);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
    e.addView(paramView, localLayoutParams);
    super.setContentView(e);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (a)
    {
      super.setContentView(paramView, paramLayoutParams);
      return;
    }
    e = new LinearLayout(this);
    e.setOrientation(1);
    paramLayoutParams = new LinearLayout.LayoutParams(paramLayoutParams);
    height = 0;
    weight = 1.0F;
    e.addView(paramView, paramLayoutParams);
    super.setContentView(e);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.base.HomeAsBackActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */