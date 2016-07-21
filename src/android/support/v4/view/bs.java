package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

public class bs
{
  private final View a;
  private ViewParent b;
  private boolean c;
  private int[] d;
  
  public bs(View paramView)
  {
    a = paramView;
  }
  
  public void a(boolean paramBoolean)
  {
    if (c) {
      cn.G(a);
    }
    c = paramBoolean;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    if ((a()) && (b != null)) {
      return eq.a(b, a, paramFloat1, paramFloat2);
    }
    return false;
  }
  
  public boolean a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((a()) && (b != null)) {
      return eq.a(b, a, paramFloat1, paramFloat2, paramBoolean);
    }
    return false;
  }
  
  public boolean a(int paramInt)
  {
    if (b()) {
      return true;
    }
    if (a())
    {
      ViewParent localViewParent = a.getParent();
      View localView = a;
      while (localViewParent != null)
      {
        if (eq.a(localViewParent, localView, a, paramInt))
        {
          b = localViewParent;
          eq.b(localViewParent, localView, a, paramInt);
          return true;
        }
        if ((localViewParent instanceof View)) {
          localView = (View)localViewParent;
        }
        localViewParent = localViewParent.getParent();
      }
    }
    return false;
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (a())
    {
      bool1 = bool2;
      if (b != null)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0)) {
          break label126;
        }
        if (paramArrayOfInt == null) {
          break label147;
        }
        a.getLocationInWindow(paramArrayOfInt);
        j = paramArrayOfInt[0];
        i = paramArrayOfInt[1];
      }
    }
    for (;;)
    {
      eq.a(b, a, paramInt1, paramInt2, paramInt3, paramInt4);
      if (paramArrayOfInt != null)
      {
        a.getLocationInWindow(paramArrayOfInt);
        paramArrayOfInt[0] -= j;
        paramArrayOfInt[1] -= i;
      }
      bool1 = true;
      label126:
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramArrayOfInt == null);
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return false;
      label147:
      i = 0;
      j = 0;
    }
  }
  
  public boolean a(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (a())
    {
      bool1 = bool2;
      if (b != null)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0)) {
          break label171;
        }
        if (paramArrayOfInt2 == null) {
          break label192;
        }
        a.getLocationInWindow(paramArrayOfInt2);
        j = paramArrayOfInt2[0];
        i = paramArrayOfInt2[1];
      }
    }
    for (;;)
    {
      int[] arrayOfInt = paramArrayOfInt1;
      if (paramArrayOfInt1 == null)
      {
        if (d == null) {
          d = new int[2];
        }
        arrayOfInt = d;
      }
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      eq.a(b, a, paramInt1, paramInt2, arrayOfInt);
      if (paramArrayOfInt2 != null)
      {
        a.getLocationInWindow(paramArrayOfInt2);
        paramArrayOfInt2[0] -= j;
        paramArrayOfInt2[1] -= i;
      }
      if (arrayOfInt[0] == 0)
      {
        bool1 = bool2;
        if (arrayOfInt[1] == 0) {}
      }
      else
      {
        bool1 = true;
      }
      label171:
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramArrayOfInt2 == null);
      paramArrayOfInt2[0] = 0;
      paramArrayOfInt2[1] = 0;
      return false;
      label192:
      i = 0;
      j = 0;
    }
  }
  
  public boolean b()
  {
    return b != null;
  }
  
  public void c()
  {
    if (b != null)
    {
      eq.a(b, a);
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */