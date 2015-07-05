package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.b.a;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

final class n
  extends l
{
  static final Interpolator A = new DecelerateInterpolator(1.5F);
  static final Interpolator B = new AccelerateInterpolator(2.5F);
  static final Interpolator C = new AccelerateInterpolator(1.5F);
  static boolean a;
  static final boolean b;
  static final Interpolator z;
  ArrayList<Runnable> c;
  Runnable[] d;
  boolean e;
  ArrayList<Fragment> f;
  ArrayList<Fragment> g;
  ArrayList<Integer> h;
  ArrayList<b> i;
  ArrayList<Fragment> j;
  ArrayList<b> k;
  ArrayList<Integer> l;
  ArrayList<m> m;
  int n = 0;
  FragmentActivity o;
  k p;
  Fragment q;
  boolean r;
  boolean s;
  boolean t;
  String u;
  boolean v;
  Bundle w = null;
  SparseArray<Parcelable> x = null;
  Runnable y = new o(this);
  
  static
  {
    boolean bool = false;
    a = false;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = true;
    }
    b = bool;
    z = new DecelerateInterpolator(2.5F);
  }
  
  static Animation a(Context paramContext, float paramFloat1, float paramFloat2)
  {
    paramContext = new AlphaAnimation(paramFloat1, paramFloat2);
    paramContext.setInterpolator(A);
    paramContext.setDuration(220L);
    return paramContext;
  }
  
  static Animation a(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramContext = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(z);
    ((ScaleAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(A);
    ((AlphaAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    return paramContext;
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new android.support.v4.b.b("FragmentManager"));
    if (o != null) {}
    for (;;)
    {
      try
      {
        o.dump("  ", null, localPrintWriter, new String[0]);
        throw paramRuntimeException;
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
        continue;
      }
      try
      {
        a("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 4097: 
      if (paramBoolean) {
        return 1;
      }
      return 2;
    case 8194: 
      if (paramBoolean) {
        return 3;
      }
      return 4;
    }
    if (paramBoolean) {
      return 5;
    }
    return 6;
  }
  
  public static int c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private void t()
  {
    if (s) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (u != null) {
      throw new IllegalStateException("Can not perform this action inside of " + u);
    }
  }
  
  public int a(b paramb)
  {
    try
    {
      if ((l == null) || (l.size() <= 0))
      {
        if (k == null) {
          k = new ArrayList();
        }
        i1 = k.size();
        if (a) {
          Log.v("FragmentManager", "Setting back stack index " + i1 + " to " + paramb);
        }
        k.add(paramb);
        return i1;
      }
      int i1 = ((Integer)l.remove(l.size() - 1)).intValue();
      if (a) {
        Log.v("FragmentManager", "Adding back stack index " + i1 + " with " + paramb);
      }
      k.set(i1, paramb);
      return i1;
    }
    finally {}
  }
  
  public Fragment a(int paramInt)
  {
    int i1;
    Object localObject;
    if (g != null)
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (Fragment)g.get(i1);
        if ((localObject != null) && (w == paramInt)) {
          return (Fragment)localObject;
        }
        i1 -= 1;
      }
    }
    if (f != null)
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label112;
        }
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null)
        {
          localObject = localFragment;
          if (w == paramInt) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label112:
    return null;
  }
  
  public Fragment a(Bundle paramBundle, String paramString)
  {
    int i1 = paramBundle.getInt(paramString, -1);
    if (i1 == -1) {
      paramBundle = null;
    }
    Fragment localFragment;
    do
    {
      return paramBundle;
      if (i1 >= f.size()) {
        a(new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i1));
      }
      localFragment = (Fragment)f.get(i1);
      paramBundle = localFragment;
    } while (localFragment != null);
    a(new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i1));
    return localFragment;
  }
  
  public Fragment a(String paramString)
  {
    int i1;
    Object localObject;
    if ((g != null) && (paramString != null))
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (Fragment)g.get(i1);
        if ((localObject != null) && (paramString.equals(y))) {
          return (Fragment)localObject;
        }
        i1 -= 1;
      }
    }
    if ((f != null) && (paramString != null))
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label126;
        }
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null)
        {
          localObject = localFragment;
          if (paramString.equals(y)) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label126:
    return null;
  }
  
  public v a()
  {
    return new b(this);
  }
  
  Animation a(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation = paramFragment.a(paramInt1, paramBoolean, G);
    if (localAnimation != null) {
      paramFragment = localAnimation;
    }
    do
    {
      return paramFragment;
      if (G == 0) {
        break;
      }
      localAnimation = AnimationUtils.loadAnimation(o, G);
      paramFragment = localAnimation;
    } while (localAnimation != null);
    if (paramInt1 == 0) {
      return null;
    }
    paramInt1 = b(paramInt1, paramBoolean);
    if (paramInt1 < 0) {
      return null;
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (o.getWindow() != null) {
          paramInt1 = o.getWindow().getAttributes().windowAnimations;
        }
      }
      if (paramInt1 == 0) {
        return null;
      }
      break;
    case 1: 
      return a(o, 1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(o, 1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return a(o, 0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return a(o, 1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return a(o, 0.0F, 1.0F);
    case 6: 
      return a(o, 1.0F, 0.0F);
    }
    return null;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((o == null) && (paramInt1 != 0)) {
      throw new IllegalStateException("No activity");
    }
    if ((!paramBoolean) && (n == paramInt1)) {}
    do
    {
      return;
      n = paramInt1;
    } while (f == null);
    int i1 = 0;
    boolean bool = false;
    label54:
    if (i1 < f.size())
    {
      Fragment localFragment = (Fragment)f.get(i1);
      if (localFragment == null) {
        break label169;
      }
      a(localFragment, paramInt1, paramInt2, paramInt3, false);
      if (M == null) {
        break label169;
      }
      bool |= M.a();
    }
    label169:
    for (;;)
    {
      i1 += 1;
      break label54;
      if (!bool) {
        d();
      }
      if ((!r) || (o == null) || (n != 5)) {
        break;
      }
      o.c();
      r = false;
      return;
    }
  }
  
  /* Error */
  public void a(int paramInt, b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   6: ifnonnull +14 -> 20
    //   9: aload_0
    //   10: new 206	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 213	java/util/ArrayList:<init>	()V
    //   17: putfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: getfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   24: invokevirtual 210	java/util/ArrayList:size	()I
    //   27: istore 4
    //   29: iload 4
    //   31: istore_3
    //   32: iload_1
    //   33: iload 4
    //   35: if_icmpge +56 -> 91
    //   38: getstatic 55	android/support/v4/app/n:a	Z
    //   41: ifeq +37 -> 78
    //   44: ldc -120
    //   46: new 191	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   53: ldc -41
    //   55: invokevirtual 198	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: iload_1
    //   59: invokevirtual 218	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   62: ldc -36
    //   64: invokevirtual 198	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 223	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 201	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 225	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: getfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   82: iload_1
    //   83: aload_2
    //   84: invokevirtual 246	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   87: pop
    //   88: aload_0
    //   89: monitorexit
    //   90: return
    //   91: iload_3
    //   92: iload_1
    //   93: if_icmpge +81 -> 174
    //   96: aload_0
    //   97: getfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   100: aconst_null
    //   101: invokevirtual 229	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   104: pop
    //   105: aload_0
    //   106: getfield 204	android/support/v4/app/n:l	Ljava/util/ArrayList;
    //   109: ifnonnull +14 -> 123
    //   112: aload_0
    //   113: new 206	java/util/ArrayList
    //   116: dup
    //   117: invokespecial 213	java/util/ArrayList:<init>	()V
    //   120: putfield 204	android/support/v4/app/n:l	Ljava/util/ArrayList;
    //   123: getstatic 55	android/support/v4/app/n:a	Z
    //   126: ifeq +29 -> 155
    //   129: ldc -120
    //   131: new 191	java/lang/StringBuilder
    //   134: dup
    //   135: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   138: ldc_w 342
    //   141: invokevirtual 198	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: iload_3
    //   145: invokevirtual 218	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   148: invokevirtual 201	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 225	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: aload_0
    //   156: getfield 204	android/support/v4/app/n:l	Ljava/util/ArrayList;
    //   159: iload_3
    //   160: invokestatic 346	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   163: invokevirtual 229	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   166: pop
    //   167: iload_3
    //   168: iconst_1
    //   169: iadd
    //   170: istore_3
    //   171: goto -80 -> 91
    //   174: getstatic 55	android/support/v4/app/n:a	Z
    //   177: ifeq +37 -> 214
    //   180: ldc -120
    //   182: new 191	java/lang/StringBuilder
    //   185: dup
    //   186: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   189: ldc -16
    //   191: invokevirtual 198	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: iload_1
    //   195: invokevirtual 218	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   198: ldc -14
    //   200: invokevirtual 198	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: aload_2
    //   204: invokevirtual 223	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 201	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokestatic 225	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   213: pop
    //   214: aload_0
    //   215: getfield 212	android/support/v4/app/n:k	Ljava/util/ArrayList;
    //   218: aload_2
    //   219: invokevirtual 229	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   222: pop
    //   223: goto -135 -> 88
    //   226: astore_2
    //   227: aload_0
    //   228: monitorexit
    //   229: aload_2
    //   230: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	this	n
    //   0	231	1	paramInt	int
    //   0	231	2	paramb	b
    //   31	140	3	i1	int
    //   27	9	4	i2	int
    // Exception table:
    //   from	to	target	type
    //   2	20	226	finally
    //   20	29	226	finally
    //   38	78	226	finally
    //   78	88	226	finally
    //   88	90	226	finally
    //   96	123	226	finally
    //   123	155	226	finally
    //   155	167	226	finally
    //   174	214	226	finally
    //   214	223	226	finally
    //   227	229	226	finally
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, 0, 0, paramBoolean);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.a(paramConfiguration);
        }
        i1 += 1;
      }
    }
  }
  
  public void a(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (f < 0) {
      a(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    }
    paramBundle.putInt(paramString, f);
  }
  
  void a(Parcelable paramParcelable, ArrayList<Fragment> paramArrayList)
  {
    if (paramParcelable == null) {}
    for (;;)
    {
      return;
      paramParcelable = (FragmentManagerState)paramParcelable;
      if (a != null)
      {
        Object localObject1;
        Object localObject2;
        if (paramArrayList != null)
        {
          i1 = 0;
          while (i1 < paramArrayList.size())
          {
            localObject1 = (Fragment)paramArrayList.get(i1);
            if (a) {
              Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localObject1);
            }
            localObject2 = a[f];
            k = ((Fragment)localObject1);
            e = null;
            r = 0;
            p = false;
            l = false;
            i = null;
            if (j != null)
            {
              j.setClassLoader(o.getClassLoader());
              e = j.getSparseParcelableArray("android:view_state");
            }
            i1 += 1;
          }
        }
        f = new ArrayList(a.length);
        if (h != null) {
          h.clear();
        }
        int i1 = 0;
        if (i1 < a.length)
        {
          localObject1 = a[i1];
          if (localObject1 != null)
          {
            localObject2 = ((FragmentState)localObject1).a(o, q);
            if (a) {
              Log.v("FragmentManager", "restoreAllState: active #" + i1 + ": " + localObject2);
            }
            f.add(localObject2);
            k = null;
          }
          for (;;)
          {
            i1 += 1;
            break;
            f.add(null);
            if (h == null) {
              h = new ArrayList();
            }
            if (a) {
              Log.v("FragmentManager", "restoreAllState: avail #" + i1);
            }
            h.add(Integer.valueOf(i1));
          }
        }
        if (paramArrayList != null)
        {
          i1 = 0;
          if (i1 < paramArrayList.size())
          {
            localObject1 = (Fragment)paramArrayList.get(i1);
            if (j >= 0) {
              if (j >= f.size()) {
                break label452;
              }
            }
            for (i = ((Fragment)f.get(j));; i = null)
            {
              i1 += 1;
              break;
              label452:
              Log.w("FragmentManager", "Re-attaching retained fragment " + localObject1 + " target no longer exists: " + j);
            }
          }
        }
        if (b != null)
        {
          g = new ArrayList(b.length);
          i1 = 0;
          while (i1 < b.length)
          {
            paramArrayList = (Fragment)f.get(b[i1]);
            if (paramArrayList == null) {
              a(new IllegalStateException("No instantiated fragment for index #" + b[i1]));
            }
            l = true;
            if (a) {
              Log.v("FragmentManager", "restoreAllState: added #" + i1 + ": " + paramArrayList);
            }
            if (g.contains(paramArrayList)) {
              throw new IllegalStateException("Already added!");
            }
            g.add(paramArrayList);
            i1 += 1;
          }
        }
        g = null;
        if (c == null) {
          break;
        }
        i = new ArrayList(c.length);
        i1 = 0;
        while (i1 < c.length)
        {
          paramArrayList = c[i1].a(this);
          if (a)
          {
            Log.v("FragmentManager", "restoreAllState: back stack #" + i1 + " (index " + o + "): " + paramArrayList);
            paramArrayList.a("  ", new PrintWriter(new android.support.v4.b.b("FragmentManager")), false);
          }
          i.add(paramArrayList);
          if (o >= 0) {
            a(o, paramArrayList);
          }
          i1 += 1;
        }
      }
    }
    i = null;
  }
  
  public void a(Fragment paramFragment)
  {
    if (K)
    {
      if (e) {
        v = true;
      }
    }
    else {
      return;
    }
    K = false;
    a(paramFragment, n, 0, 0, false);
  }
  
  public void a(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "remove: " + paramFragment + " nesting=" + r);
    }
    if (!paramFragment.a())
    {
      i1 = 1;
      if ((!A) || (i1 != 0))
      {
        if (g != null) {
          g.remove(paramFragment);
        }
        if ((D) && (E)) {
          r = true;
        }
        l = false;
        m = true;
        if (i1 == 0) {
          break label137;
        }
      }
    }
    label137:
    for (int i1 = 0;; i1 = 1)
    {
      a(paramFragment, i1, paramInt1, paramInt2, false);
      return;
      i1 = 0;
      break;
    }
  }
  
  void a(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i1;
    if (l)
    {
      i1 = paramInt1;
      if (!A) {}
    }
    else
    {
      i1 = paramInt1;
      if (paramInt1 > 1) {
        i1 = 1;
      }
    }
    int i2 = i1;
    if (m)
    {
      i2 = i1;
      if (i1 > a) {
        i2 = a;
      }
    }
    paramInt1 = i2;
    if (K)
    {
      paramInt1 = i2;
      if (a < 4)
      {
        paramInt1 = i2;
        if (i2 > 3) {
          paramInt1 = 3;
        }
      }
    }
    int i3;
    label557:
    Object localObject2;
    if (a < paramInt1)
    {
      if ((o) && (!p)) {
        return;
      }
      if (b != null)
      {
        b = null;
        a(paramFragment, c, 0, 0, true);
      }
      i1 = paramInt1;
      i3 = paramInt1;
      i2 = paramInt1;
      switch (a)
      {
      default: 
        i1 = paramInt1;
        a = i1;
        return;
      case 0: 
        if (a) {
          Log.v("FragmentManager", "moveto CREATED: " + paramFragment);
        }
        i2 = paramInt1;
        if (d != null)
        {
          e = d.getSparseParcelableArray("android:view_state");
          i = a(d, "android:target_state");
          if (i != null) {
            k = d.getInt("android:target_req_state", 0);
          }
          L = d.getBoolean("android:user_visible_hint", true);
          i2 = paramInt1;
          if (!L)
          {
            K = true;
            i2 = paramInt1;
            if (paramInt1 > 3) {
              i2 = 3;
            }
          }
        }
        t = o;
        v = q;
        if (q != null) {}
        for (localObject1 = q.u;; localObject1 = o.b)
        {
          s = ((n)localObject1);
          F = false;
          paramFragment.a(o);
          if (F) {
            break;
          }
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onAttach()");
        }
        if (v == null) {
          o.a(paramFragment);
        }
        if (!C) {
          paramFragment.g(d);
        }
        C = false;
        i1 = i2;
        if (o)
        {
          I = paramFragment.b(paramFragment.b(d), null, d);
          if (I == null) {
            break label993;
          }
          J = I;
          I = aa.a(I);
          if (z) {
            I.setVisibility(8);
          }
          paramFragment.a(I, d);
          i1 = i2;
        }
      case 1: 
        i3 = i1;
        if (i1 > 1)
        {
          if (a) {
            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + paramFragment);
          }
          if (!o)
          {
            if (x == 0) {
              break label1574;
            }
            localObject2 = (ViewGroup)p.a(x);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (!q) {
                a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(x) + " (" + paramFragment.c().getResourceName(x) + ") for fragment " + paramFragment));
              }
            }
          }
        }
        break;
      }
    }
    label993:
    label1070:
    label1433:
    label1568:
    label1574:
    for (Object localObject1 = localObject2;; localObject1 = null)
    {
      H = ((ViewGroup)localObject1);
      I = paramFragment.b(paramFragment.b(d), (ViewGroup)localObject1, d);
      if (I != null)
      {
        J = I;
        I = aa.a(I);
        if (localObject1 != null)
        {
          localObject2 = a(paramFragment, paramInt2, true, paramInt3);
          if (localObject2 != null) {
            I.startAnimation((Animation)localObject2);
          }
          ((ViewGroup)localObject1).addView(I);
        }
        if (z) {
          I.setVisibility(8);
        }
        paramFragment.a(I, d);
      }
      for (;;)
      {
        paramFragment.h(d);
        if (I != null) {
          paramFragment.a(d);
        }
        d = null;
        i3 = i1;
        i2 = i3;
        if (i3 > 3)
        {
          if (a) {
            Log.v("FragmentManager", "moveto STARTED: " + paramFragment);
          }
          paramFragment.o();
          i2 = i3;
        }
        i1 = i2;
        if (i2 <= 4) {
          break;
        }
        if (a) {
          Log.v("FragmentManager", "moveto RESUMED: " + paramFragment);
        }
        n = true;
        paramFragment.p();
        d = null;
        e = null;
        i1 = i2;
        break;
        J = null;
        i1 = i2;
        break label557;
        J = null;
      }
      i1 = paramInt1;
      if (a <= paramInt1) {
        break;
      }
      switch (a)
      {
      default: 
        i1 = paramInt1;
        break;
      case 1: 
      case 5: 
      case 4: 
      case 3: 
      case 2: 
        do
        {
          i1 = paramInt1;
          if (paramInt1 >= 1) {
            break;
          }
          if ((t) && (b != null))
          {
            localObject1 = b;
            b = null;
            ((View)localObject1).clearAnimation();
          }
          if (b == null) {
            break label1433;
          }
          c = paramInt1;
          i1 = 1;
          break;
          if (paramInt1 < 5)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom RESUMED: " + paramFragment);
            }
            paramFragment.r();
            n = false;
          }
          if (paramInt1 < 4)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STARTED: " + paramFragment);
            }
            paramFragment.s();
          }
          if (paramInt1 < 3)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STOPPED: " + paramFragment);
            }
            paramFragment.t();
          }
        } while (paramInt1 >= 2);
        if (a) {
          Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + paramFragment);
        }
        if ((I != null) && (!o.isFinishing()) && (e == null)) {
          e(paramFragment);
        }
        paramFragment.u();
        if ((I != null) && (H != null)) {
          if ((n <= 0) || (t)) {
            break label1568;
          }
        }
        for (localObject1 = a(paramFragment, paramInt2, false, paramInt3);; localObject1 = null)
        {
          if (localObject1 != null)
          {
            b = I;
            c = paramInt1;
            ((Animation)localObject1).setAnimationListener(new p(this, paramFragment));
            I.startAnimation((Animation)localObject1);
          }
          H.removeView(I);
          H = null;
          I = null;
          J = null;
          break label1070;
          if (a) {
            Log.v("FragmentManager", "movefrom CREATED: " + paramFragment);
          }
          if (!C) {
            paramFragment.v();
          }
          F = false;
          paramFragment.l();
          if (!F) {
            throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDetach()");
          }
          i1 = paramInt1;
          if (paramBoolean) {
            break;
          }
          if (!C)
          {
            d(paramFragment);
            i1 = paramInt1;
            break;
          }
          t = null;
          s = null;
          i1 = paramInt1;
          break;
        }
      }
    }
  }
  
  public void a(Fragment paramFragment, boolean paramBoolean)
  {
    if (g == null) {
      g = new ArrayList();
    }
    if (a) {
      Log.v("FragmentManager", "add: " + paramFragment);
    }
    c(paramFragment);
    if (!A)
    {
      if (g.contains(paramFragment)) {
        throw new IllegalStateException("Fragment already added: " + paramFragment);
      }
      g.add(paramFragment);
      l = true;
      m = false;
      if ((D) && (E)) {
        r = true;
      }
      if (paramBoolean) {
        b(paramFragment);
      }
    }
  }
  
  public void a(FragmentActivity paramFragmentActivity, k paramk, Fragment paramFragment)
  {
    if (o != null) {
      throw new IllegalStateException("Already attached");
    }
    o = paramFragmentActivity;
    p = paramk;
    q = paramFragment;
  }
  
  public void a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean) {
      t();
    }
    try
    {
      if (o == null) {
        throw new IllegalStateException("Activity has been destroyed");
      }
    }
    finally {}
    if (c == null) {
      c = new ArrayList();
    }
    c.add(paramRunnable);
    if (c.size() == 1)
    {
      o.a.removeCallbacks(y);
      o.a.post(y);
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i2 = 0;
    String str = paramString + "    ";
    int i3;
    int i1;
    Object localObject;
    if (f != null)
    {
      i3 = f.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)f.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localObject);
          if (localObject != null) {
            ((Fragment)localObject).a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i1 += 1;
        }
      }
    }
    if (g != null)
    {
      i3 = g.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)g.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i1 += 1;
        }
      }
    }
    if (j != null)
    {
      i3 = j.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)j.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i1 += 1;
        }
      }
    }
    if (i != null)
    {
      i3 = i.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (b)i.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((b)localObject).toString());
          ((b)localObject).a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          i1 += 1;
        }
      }
    }
    try
    {
      if (k != null)
      {
        i3 = k.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i1 = 0;
          while (i1 < i3)
          {
            paramFileDescriptor = (b)k.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      if ((l != null) && (l.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(l.toArray()));
      }
      if (c != null)
      {
        i3 = c.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i1 = i2;
          while (i1 < i3)
          {
            paramFileDescriptor = (Runnable)c.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
    }
    finally {}
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mActivity=");
    paramPrintWriter.println(o);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(p);
    if (q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(q);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(s);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(t);
    if (r)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(r);
    }
    if (u != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(u);
    }
    if ((h != null) && (h.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(h.toArray()));
    }
  }
  
  boolean a(Handler paramHandler, String paramString, int paramInt1, int paramInt2)
  {
    if (i == null) {
      break label114;
    }
    label7:
    do
    {
      return false;
      if ((paramString != null) || (paramInt1 >= 0) || ((paramInt2 & 0x1) != 0)) {
        break;
      }
      paramInt1 = i.size() - 1;
    } while (paramInt1 < 0);
    ((b)i.remove(paramInt1)).b(true);
    f();
    for (;;)
    {
      return true;
      int i1 = -1;
      if ((paramString != null) || (paramInt1 >= 0))
      {
        int i2 = i.size() - 1;
        for (;;)
        {
          if (i2 >= 0)
          {
            paramHandler = (b)i.get(i2);
            if ((paramString == null) || (!paramString.equals(paramHandler.b()))) {}
          }
          else
          {
            label114:
            if (i2 < 0) {
              break label7;
            }
            i1 = i2;
            if ((paramInt2 & 0x1) == 0) {
              break label223;
            }
            paramInt2 = i2 - 1;
            for (;;)
            {
              i1 = paramInt2;
              if (paramInt2 < 0) {
                break;
              }
              paramHandler = (b)i.get(paramInt2);
              if ((paramString == null) || (!paramString.equals(paramHandler.b())))
              {
                i1 = paramInt2;
                if (paramInt1 < 0) {
                  break;
                }
                i1 = paramInt2;
                if (paramInt1 != o) {
                  break;
                }
              }
              paramInt2 -= 1;
            }
          }
          if ((paramInt1 >= 0) && (paramInt1 == o)) {
            break;
          }
          i2 -= 1;
        }
      }
      label223:
      if (i1 == i.size() - 1) {
        break label7;
      }
      paramHandler = new ArrayList();
      paramInt1 = i.size() - 1;
      while (paramInt1 > i1)
      {
        paramHandler.add(i.remove(paramInt1));
        paramInt1 -= 1;
      }
      paramInt2 = paramHandler.size() - 1;
      paramInt1 = 0;
      if (paramInt1 <= paramInt2)
      {
        if (a) {
          Log.v("FragmentManager", "Popping back stack state: " + paramHandler.get(paramInt1));
        }
        paramString = (b)paramHandler.get(paramInt1);
        if (paramInt1 == paramInt2) {}
        for (boolean bool = true;; bool = false)
        {
          paramString.b(bool);
          paramInt1 += 1;
          break;
        }
      }
      f();
    }
  }
  
  public boolean a(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      for (boolean bool1 = false;; bool1 = bool2)
      {
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        Fragment localFragment = (Fragment)g.get(i1);
        bool2 = bool1;
        if (localFragment != null)
        {
          bool2 = bool1;
          if (localFragment.c(paramMenu)) {
            bool2 = true;
          }
        }
        i1 += 1;
      }
    }
    boolean bool2 = false;
    return bool2;
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i2 = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    int i1;
    if (g != null)
    {
      i1 = 0;
      boolean bool1 = false;
      for (;;)
      {
        localObject2 = localObject1;
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        Fragment localFragment = (Fragment)g.get(i1);
        localObject2 = localObject1;
        bool2 = bool1;
        if (localFragment != null)
        {
          localObject2 = localObject1;
          bool2 = bool1;
          if (localFragment.b(paramMenu, paramMenuInflater))
          {
            bool2 = true;
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
          }
        }
        i1 += 1;
        bool1 = bool2;
        localObject1 = localObject2;
      }
    }
    boolean bool2 = false;
    if (j != null)
    {
      i1 = i2;
      while (i1 < j.size())
      {
        paramMenu = (Fragment)j.get(i1);
        if ((localObject2 == null) || (!((ArrayList)localObject2).contains(paramMenu))) {
          paramMenu.m();
        }
        i1 += 1;
      }
    }
    j = ((ArrayList)localObject2);
    return bool2;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if ((localFragment != null) && (localFragment.c(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public void b(int paramInt)
  {
    try
    {
      k.set(paramInt, null);
      if (l == null) {
        l = new ArrayList();
      }
      if (a) {
        Log.v("FragmentManager", "Freeing back stack index " + paramInt);
      }
      l.add(Integer.valueOf(paramInt));
      return;
    }
    finally {}
  }
  
  void b(Fragment paramFragment)
  {
    a(paramFragment, n, 0, 0, false);
  }
  
  public void b(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "hide: " + paramFragment);
    }
    if (!z)
    {
      z = true;
      if (I != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null) {
          I.startAnimation(localAnimation);
        }
        I.setVisibility(8);
      }
      if ((l) && (D) && (E)) {
        r = true;
      }
      paramFragment.a(true);
    }
  }
  
  void b(b paramb)
  {
    if (i == null) {
      i = new ArrayList();
    }
    i.add(paramb);
    f();
  }
  
  public void b(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.d(paramMenu);
        }
        i1 += 1;
      }
    }
  }
  
  public boolean b()
  {
    return e();
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if ((localFragment != null) && (localFragment.d(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  void c(Fragment paramFragment)
  {
    if (f >= 0) {}
    for (;;)
    {
      return;
      if ((h == null) || (h.size() <= 0))
      {
        if (f == null) {
          f = new ArrayList();
        }
        paramFragment.a(f.size(), q);
        f.add(paramFragment);
      }
      while (a)
      {
        Log.v("FragmentManager", "Allocated fragment index " + paramFragment);
        return;
        paramFragment.a(((Integer)h.remove(h.size() - 1)).intValue(), q);
        f.set(f, paramFragment);
      }
    }
  }
  
  public void c(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "show: " + paramFragment);
    }
    if (z)
    {
      z = false;
      if (I != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null) {
          I.startAnimation(localAnimation);
        }
        I.setVisibility(0);
      }
      if ((l) && (D) && (E)) {
        r = true;
      }
      paramFragment.a(false);
    }
  }
  
  public boolean c()
  {
    t();
    b();
    return a(o.a, null, -1, 0);
  }
  
  void d()
  {
    if (f == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < f.size())
      {
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null) {
          a(localFragment);
        }
        i1 += 1;
      }
    }
  }
  
  void d(Fragment paramFragment)
  {
    if (f < 0) {
      return;
    }
    if (a) {
      Log.v("FragmentManager", "Freeing fragment index " + paramFragment);
    }
    f.set(f, null);
    if (h == null) {
      h = new ArrayList();
    }
    h.add(Integer.valueOf(f));
    o.a(g);
    paramFragment.k();
  }
  
  public void d(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "detach: " + paramFragment);
    }
    if (!A)
    {
      A = true;
      if (l)
      {
        if (g != null)
        {
          if (a) {
            Log.v("FragmentManager", "remove from detach: " + paramFragment);
          }
          g.remove(paramFragment);
        }
        if ((D) && (E)) {
          r = true;
        }
        l = false;
        a(paramFragment, 1, paramInt1, paramInt2, false);
      }
    }
  }
  
  void e(Fragment paramFragment)
  {
    if (J == null) {
      return;
    }
    if (x == null) {
      x = new SparseArray();
    }
    for (;;)
    {
      J.saveHierarchyState(x);
      if (x.size() <= 0) {
        break;
      }
      e = x;
      x = null;
      return;
      x.clear();
    }
  }
  
  public void e(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "attach: " + paramFragment);
    }
    if (A)
    {
      A = false;
      if (!l)
      {
        if (g == null) {
          g = new ArrayList();
        }
        if (g.contains(paramFragment)) {
          throw new IllegalStateException("Fragment already added: " + paramFragment);
        }
        if (a) {
          Log.v("FragmentManager", "add from attach: " + paramFragment);
        }
        g.add(paramFragment);
        l = true;
        if ((D) && (E)) {
          r = true;
        }
        a(paramFragment, n, paramInt1, paramInt2, false);
      }
    }
  }
  
  public boolean e()
  {
    if (e) {
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    }
    if (Looper.myLooper() != o.a.getLooper()) {
      throw new IllegalStateException("Must be called from main thread of process");
    }
    int i2;
    for (boolean bool = false;; bool = true) {
      try
      {
        if ((c == null) || (c.size() == 0))
        {
          if (!v) {
            break label276;
          }
          i1 = 0;
          int i4;
          for (i2 = 0; i1 < f.size(); i2 = i4)
          {
            Fragment localFragment = (Fragment)f.get(i1);
            int i3 = i2;
            if (localFragment != null)
            {
              i3 = i2;
              if (M != null) {
                i4 = i2 | M.a();
              }
            }
            i1 += 1;
          }
        }
        i2 = c.size();
        if ((d == null) || (d.length < i2)) {
          d = new Runnable[i2];
        }
        c.toArray(d);
        c.clear();
        o.a.removeCallbacks(y);
        e = true;
        int i1 = 0;
        while (i1 < i2)
        {
          d[i1].run();
          d[i1] = null;
          i1 += 1;
        }
        e = false;
      }
      finally {}
    }
    if (i2 == 0)
    {
      v = false;
      d();
    }
    label276:
    return bool;
  }
  
  Bundle f(Fragment paramFragment)
  {
    if (w == null) {
      w = new Bundle();
    }
    paramFragment.i(w);
    Object localObject2;
    if (!w.isEmpty())
    {
      localObject2 = w;
      w = null;
    }
    for (;;)
    {
      if (I != null) {
        e(paramFragment);
      }
      Object localObject1 = localObject2;
      if (e != null)
      {
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new Bundle();
        }
        ((Bundle)localObject1).putSparseParcelableArray("android:view_state", e);
      }
      localObject2 = localObject1;
      if (!L)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new Bundle();
        }
        ((Bundle)localObject2).putBoolean("android:user_visible_hint", L);
      }
      return (Bundle)localObject2;
      localObject2 = null;
    }
  }
  
  void f()
  {
    if (m != null)
    {
      int i1 = 0;
      while (i1 < m.size())
      {
        ((m)m.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  ArrayList<Fragment> g()
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (f != null)
    {
      int i1 = 0;
      localObject2 = localObject1;
      if (i1 < f.size())
      {
        Fragment localFragment = (Fragment)f.get(i1);
        Object localObject3 = localObject1;
        if (localFragment != null)
        {
          localObject3 = localObject1;
          if (B)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
            C = true;
            if (i == null) {
              break label164;
            }
          }
        }
        label164:
        for (int i2 = i.f;; i2 = -1)
        {
          j = i2;
          localObject3 = localObject2;
          if (a)
          {
            Log.v("FragmentManager", "retainNonConfig: keeping retained " + localFragment);
            localObject3 = localObject2;
          }
          i1 += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    return (ArrayList<Fragment>)localObject2;
  }
  
  Parcelable h()
  {
    Object localObject3 = null;
    e();
    if (b) {
      s = true;
    }
    if ((f == null) || (f.size() <= 0)) {
      return null;
    }
    int i3 = f.size();
    FragmentState[] arrayOfFragmentState = new FragmentState[i3];
    int i2 = 0;
    int i1 = 0;
    label56:
    Object localObject1;
    Object localObject2;
    if (i2 < i3)
    {
      localObject1 = (Fragment)f.get(i2);
      if (localObject1 == null) {
        break label719;
      }
      if (f < 0) {
        a(new IllegalStateException("Failure saving state: active " + localObject1 + " has cleared index: " + f));
      }
      localObject2 = new FragmentState((Fragment)localObject1);
      arrayOfFragmentState[i2] = localObject2;
      if ((a > 0) && (j == null))
      {
        j = f((Fragment)localObject1);
        if (i != null)
        {
          if (i.f < 0) {
            a(new IllegalStateException("Failure saving state: " + localObject1 + " has target not in fragment manager: " + i));
          }
          if (j == null) {
            j = new Bundle();
          }
          a(j, "android:target_state", i);
          if (k != 0) {
            j.putInt("android:target_req_state", k);
          }
        }
        label303:
        if (a) {
          Log.v("FragmentManager", "Saved state of " + localObject1 + ": " + j);
        }
        i1 = 1;
      }
    }
    label719:
    for (;;)
    {
      i2 += 1;
      break label56;
      j = d;
      break label303;
      if (i1 == 0)
      {
        if (!a) {
          break;
        }
        Log.v("FragmentManager", "saveAllState: no fragments!");
        return null;
      }
      if (g != null)
      {
        i2 = g.size();
        if (i2 > 0)
        {
          localObject2 = new int[i2];
          i1 = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (i1 >= i2) {
              break;
            }
            localObject2[i1] = g.get(i1)).f;
            if (localObject2[i1] < 0) {
              a(new IllegalStateException("Failure saving state: active " + g.get(i1) + " has cleared index: " + localObject2[i1]));
            }
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding fragment #" + i1 + ": " + g.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject1 = null;
      localObject2 = localObject3;
      if (i != null)
      {
        i2 = i.size();
        localObject2 = localObject3;
        if (i2 > 0)
        {
          localObject3 = new BackStackState[i2];
          i1 = 0;
          for (;;)
          {
            localObject2 = localObject3;
            if (i1 >= i2) {
              break;
            }
            localObject3[i1] = new BackStackState(this, (b)i.get(i1));
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding back stack #" + i1 + ": " + i.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject3 = new FragmentManagerState();
      a = arrayOfFragmentState;
      b = ((int[])localObject1);
      c = ((BackStackState[])localObject2);
      return (Parcelable)localObject3;
    }
  }
  
  public void i()
  {
    s = false;
  }
  
  public void j()
  {
    s = false;
    a(1, false);
  }
  
  public void k()
  {
    s = false;
    a(2, false);
  }
  
  public void l()
  {
    s = false;
    a(4, false);
  }
  
  public void m()
  {
    s = false;
    a(5, false);
  }
  
  public void n()
  {
    a(4, false);
  }
  
  public void o()
  {
    s = true;
    a(3, false);
  }
  
  public void p()
  {
    a(2, false);
  }
  
  public void q()
  {
    a(1, false);
  }
  
  public void r()
  {
    t = true;
    e();
    a(0, false);
    o = null;
    p = null;
    q = null;
  }
  
  public void s()
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.q();
        }
        i1 += 1;
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (q != null) {
      a.a(q, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      a.a(o, localStringBuilder);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */