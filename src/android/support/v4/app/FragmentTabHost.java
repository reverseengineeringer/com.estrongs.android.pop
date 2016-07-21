package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import java.util.ArrayList;

public class FragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<ay> a = new ArrayList();
  private Context b;
  private aj c;
  private int d;
  private TabHost.OnTabChangeListener e;
  private ay f;
  private boolean g;
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private az a(String paramString, az paramaz)
  {
    Object localObject = null;
    int i = 0;
    if (i < a.size())
    {
      ay localay = (ay)a.get(i);
      if (!ay.b(localay).equals(paramString)) {
        break label217;
      }
      localObject = localay;
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
      paramString = paramaz;
      if (f != localObject)
      {
        paramString = paramaz;
        if (paramaz == null) {
          paramString = c.a();
        }
        if ((f != null) && (ay.a(f) != null)) {
          paramString.b(ay.a(f));
        }
        if (localObject != null)
        {
          if (ay.a((ay)localObject) != null) {
            break label204;
          }
          ay.a((ay)localObject, Fragment.instantiate(b, ay.c((ay)localObject).getName(), ay.d((ay)localObject)));
          paramString.a(d, ay.a((ay)localObject), ay.b((ay)localObject));
        }
      }
      for (;;)
      {
        f = ((ay)localObject);
        return paramString;
        paramString.c(ay.a((ay)localObject));
      }
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    d = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < a.size())
    {
      ay localay = (ay)a.get(i);
      ay.a(localay, c.a(ay.b(localay)));
      Object localObject2 = localObject1;
      if (ay.a(localay) != null)
      {
        localObject2 = localObject1;
        if (!ay.a(localay).isDetached())
        {
          if (!ay.b(localay).equals(str)) {
            break label109;
          }
          f = localay;
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
          localObject2 = c.a();
        }
        ((az)localObject2).b(ay.a(localay));
      }
    }
    g = true;
    localObject1 = a(str, (az)localObject1);
    if (localObject1 != null)
    {
      ((az)localObject1).b();
      c.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    g = false;
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
    if (g)
    {
      az localaz = a(paramString, null);
      if (localaz != null) {
        localaz.b();
      }
    }
    if (e != null) {
      e.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    e = paramOnTabChangeListener;
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