package android.support.v4.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class b
  extends v
  implements Runnable
{
  final n a;
  c b;
  c c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  boolean k;
  boolean l = true;
  String m;
  boolean n;
  int o = -1;
  int p;
  CharSequence q;
  int r;
  CharSequence s;
  
  public b(n paramn)
  {
    a = paramn;
  }
  
  private void a(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    s = a;
    if (paramString != null)
    {
      if ((y != null) && (!paramString.equals(y))) {
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + y + " now " + paramString);
      }
      y = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((w != 0) && (w != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + w + " now " + paramInt1);
      }
      w = paramInt1;
      x = paramInt1;
    }
    paramString = new c();
    c = paramInt2;
    d = paramFragment;
    a(paramString);
  }
  
  public int a()
  {
    return a(false);
  }
  
  int a(boolean paramBoolean)
  {
    if (n) {
      throw new IllegalStateException("commit already called");
    }
    if (n.a)
    {
      Log.v("FragmentManager", "Commit: " + this);
      a("  ", null, new PrintWriter(new android.support.v4.b.b("FragmentManager")), null);
    }
    n = true;
    if (k) {}
    for (o = a.a(this);; o = -1)
    {
      a.a(this, paramBoolean);
      return o;
    }
  }
  
  public v a(int paramInt, Fragment paramFragment, String paramString)
  {
    a(paramInt, paramFragment, paramString, 1);
    return this;
  }
  
  public v a(Fragment paramFragment)
  {
    c localc = new c();
    c = 6;
    d = paramFragment;
    a(localc);
    return this;
  }
  
  void a(int paramInt)
  {
    if (!k) {}
    for (;;)
    {
      return;
      if (n.a) {
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      }
      for (c localc = b; localc != null; localc = a)
      {
        Fragment localFragment;
        if (d != null)
        {
          localFragment = d;
          r += paramInt;
          if (n.a) {
            Log.v("FragmentManager", "Bump nesting of " + d + " to " + d.r);
          }
        }
        if (i != null)
        {
          int i1 = i.size() - 1;
          while (i1 >= 0)
          {
            localFragment = (Fragment)i.get(i1);
            r += paramInt;
            if (n.a) {
              Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + r);
            }
            i1 -= 1;
          }
        }
      }
    }
  }
  
  void a(c paramc)
  {
    if (b == null)
    {
      c = paramc;
      b = paramc;
    }
    for (;;)
    {
      e = e;
      f = f;
      g = g;
      h = h;
      d += 1;
      return;
      b = c;
      c.a = paramc;
      c = paramc;
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(m);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(o);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(n);
      if (i != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(i));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(j));
      }
      if ((e != 0) || (f != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(e));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(f));
      }
      if ((g != 0) || (h != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(g));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(h));
      }
      if ((p != 0) || (q != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(p));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(q);
      }
      if ((r != 0) || (s != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(r));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(s);
      }
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      c localc = b;
      int i1 = 0;
      while (localc != null)
      {
        String str1;
        int i2;
        switch (c)
        {
        default: 
          str1 = "cmd=" + c;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str1);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(d);
          if (paramBoolean)
          {
            if ((e != 0) || (f != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(e));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(f));
            }
            if ((g != 0) || (h != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(g));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(h));
            }
          }
          if ((i == null) || (i.size() <= 0)) {
            break label795;
          }
          i2 = 0;
          label629:
          if (i2 >= i.size()) {
            break label795;
          }
          paramPrintWriter.print(str2);
          if (i.size() == 1) {
            paramPrintWriter.print("Removed: ");
          }
          break;
        }
        for (;;)
        {
          paramPrintWriter.println(i.get(i2));
          i2 += 1;
          break label629;
          str1 = "NULL";
          break;
          str1 = "ADD";
          break;
          str1 = "REPLACE";
          break;
          str1 = "REMOVE";
          break;
          str1 = "HIDE";
          break;
          str1 = "SHOW";
          break;
          str1 = "DETACH";
          break;
          str1 = "ATTACH";
          break;
          if (i2 == 0) {
            paramPrintWriter.println("Removed:");
          }
          paramPrintWriter.print(str2);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label795:
        localc = a;
        i1 += 1;
      }
    }
  }
  
  public v b(Fragment paramFragment)
  {
    c localc = new c();
    c = 7;
    d = paramFragment;
    a(localc);
    return this;
  }
  
  public String b()
  {
    return m;
  }
  
  public void b(boolean paramBoolean)
  {
    if (n.a)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      a("  ", null, new PrintWriter(new android.support.v4.b.b("FragmentManager")), null);
    }
    a(-1);
    c localc = c;
    if (localc != null)
    {
      Fragment localFragment;
      switch (c)
      {
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + c);
      case 1: 
        localFragment = d;
        G = h;
        a.a(localFragment, n.c(i), j);
      }
      for (;;)
      {
        localc = b;
        break;
        localFragment = d;
        if (localFragment != null)
        {
          G = h;
          a.a(localFragment, n.c(i), j);
        }
        if (i != null)
        {
          int i1 = 0;
          while (i1 < i.size())
          {
            localFragment = (Fragment)i.get(i1);
            G = g;
            a.a(localFragment, false);
            i1 += 1;
          }
          localFragment = d;
          G = g;
          a.a(localFragment, false);
          continue;
          localFragment = d;
          G = g;
          a.c(localFragment, n.c(i), j);
          continue;
          localFragment = d;
          G = h;
          a.b(localFragment, n.c(i), j);
          continue;
          localFragment = d;
          G = g;
          a.e(localFragment, n.c(i), j);
          continue;
          localFragment = d;
          G = g;
          a.d(localFragment, n.c(i), j);
        }
      }
    }
    if (paramBoolean) {
      a.a(a.n, n.c(i), j, true);
    }
    if (o >= 0)
    {
      a.b(o);
      o = -1;
    }
  }
  
  public void run()
  {
    if (n.a) {
      Log.v("FragmentManager", "Run: " + this);
    }
    if ((k) && (o < 0)) {
      throw new IllegalStateException("addToBackStack() called after commit()");
    }
    a(1);
    c localc = b;
    if (localc != null)
    {
      Object localObject1;
      switch (c)
      {
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + c);
      case 1: 
        localObject1 = d;
        G = e;
        a.a((Fragment)localObject1, false);
      }
      for (;;)
      {
        localc = a;
        break;
        localObject1 = d;
        Object localObject2;
        if (a.g != null)
        {
          int i1 = 0;
          localObject2 = localObject1;
          if (i1 < a.g.size())
          {
            Fragment localFragment = (Fragment)a.g.get(i1);
            if (n.a) {
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localObject1 + " old=" + localFragment);
            }
            if (localObject1 != null)
            {
              localObject2 = localObject1;
              if (x != x) {}
            }
            else
            {
              if (localFragment != localObject1) {
                break label313;
              }
              localObject2 = null;
              d = null;
            }
            for (;;)
            {
              i1 += 1;
              localObject1 = localObject2;
              break;
              label313:
              if (i == null) {
                i = new ArrayList();
              }
              i.add(localFragment);
              G = f;
              if (k)
              {
                r += 1;
                if (n.a) {
                  Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + r);
                }
              }
              a.a(localFragment, i, j);
              localObject2 = localObject1;
            }
          }
        }
        else
        {
          localObject2 = localObject1;
        }
        if (localObject2 != null)
        {
          G = e;
          a.a((Fragment)localObject2, false);
          continue;
          localObject1 = d;
          G = f;
          a.a((Fragment)localObject1, i, j);
          continue;
          localObject1 = d;
          G = f;
          a.b((Fragment)localObject1, i, j);
          continue;
          localObject1 = d;
          G = e;
          a.c((Fragment)localObject1, i, j);
          continue;
          localObject1 = d;
          G = f;
          a.d((Fragment)localObject1, i, j);
          continue;
          localObject1 = d;
          G = e;
          a.e((Fragment)localObject1, i, j);
        }
      }
    }
    a.a(a.n, i, j, true);
    if (k) {
      a.b(this);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (o >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(o);
    }
    if (m != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(m);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */