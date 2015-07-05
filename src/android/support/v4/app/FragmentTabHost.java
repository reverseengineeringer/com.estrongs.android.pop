package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<u> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private l d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private u g;
  private boolean h;
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private v a(String paramString, v paramv)
  {
    Object localObject = null;
    int i = 0;
    if (i < a.size())
    {
      u localu = (u)a.get(i);
      if (!u.b(localu).equals(paramString)) {
        break label217;
      }
      localObject = localu;
    }
    label204:
    label217:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        throw new IllegalStateException("No tab known for tag " + paramString);
      }
      paramString = paramv;
      if (g != localObject)
      {
        paramString = paramv;
        if (paramv == null) {
          paramString = d.a();
        }
        if ((g != null) && (u.a(g) != null)) {
          paramString.a(u.a(g));
        }
        if (localObject != null)
        {
          if (u.a((u)localObject) != null) {
            break label204;
          }
          u.a((u)localObject, Fragment.a(c, u.c((u)localObject).getName(), u.d((u)localObject)));
          paramString.a(e, u.a((u)localObject), u.b((u)localObject));
        }
      }
      for (;;)
      {
        g = ((u)localObject);
        return paramString;
        paramString.b(u.a((u)localObject));
      }
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    e = paramAttributeSet.getResourceId(0, 0);
    paramAttributeSet.recycle();
    super.setOnTabChangedListener(this);
    if (findViewById(16908307) == null)
    {
      paramAttributeSet = new LinearLayout(paramContext);
      paramAttributeSet.setOrientation(1);
      addView(paramAttributeSet, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      paramAttributeSet.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      paramAttributeSet.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      paramContext = new FrameLayout(paramContext);
      b = paramContext;
      b.setId(e);
      paramAttributeSet.addView(paramContext, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < a.size())
    {
      u localu = (u)a.get(i);
      u.a(localu, d.a(u.b(localu)));
      Object localObject2 = localObject1;
      if (u.a(localu) != null)
      {
        localObject2 = localObject1;
        if (!u.a(localu).d())
        {
          if (!u.b(localu).equals(str)) {
            break label109;
          }
          g = localu;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label109:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = d.a();
        }
        ((v)localObject2).a(u.a(localu));
      }
    }
    h = true;
    localObject1 = a(str, (v)localObject1);
    if (localObject1 != null)
    {
      ((v)localObject1).a();
      d.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    a = getCurrentTabTag();
    return localSavedState;
  }
  
  public void onTabChanged(String paramString)
  {
    if (h)
    {
      v localv = a(paramString, null);
      if (localv != null) {
        localv.a();
      }
    }
    if (f != null) {
      f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentTabHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */