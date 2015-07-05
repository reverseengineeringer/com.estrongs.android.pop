package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.b.a;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final HashMap<String, Class<?>> P = new HashMap();
  boolean A;
  boolean B;
  boolean C;
  boolean D;
  boolean E = true;
  boolean F;
  int G;
  ViewGroup H;
  View I;
  View J;
  boolean K;
  boolean L = true;
  y M;
  boolean N;
  boolean O;
  int a = 0;
  View b;
  int c;
  Bundle d;
  SparseArray<Parcelable> e;
  int f = -1;
  String g;
  Bundle h;
  Fragment i;
  int j = -1;
  int k;
  boolean l;
  boolean m;
  boolean n;
  boolean o;
  boolean p;
  boolean q;
  int r;
  n s;
  FragmentActivity t;
  n u;
  Fragment v;
  int w;
  int x;
  String y;
  boolean z;
  
  public static Fragment a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, null);
  }
  
  public static Fragment a(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)P.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        P.put(paramString, localClass1);
      }
      paramContext = (Fragment)localClass1.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        h = paramBundle;
      }
      return paramContext;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new Fragment.InstantiationException("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new Fragment.InstantiationException("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new Fragment.InstantiationException("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
  
  public Animation a(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  final void a(int paramInt, Fragment paramFragment)
  {
    f = paramInt;
    if (paramFragment != null)
    {
      g = (g + ":" + f);
      return;
    }
    g = ("android:fragment:" + f);
  }
  
  public void a(Activity paramActivity)
  {
    F = true;
  }
  
  public void a(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    F = true;
  }
  
  void a(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (u != null) {
      u.a(paramConfiguration);
    }
  }
  
  final void a(Bundle paramBundle)
  {
    if (e != null)
    {
      J.restoreHierarchyState(e);
      e = null;
    }
    F = false;
    e(paramBundle);
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }
  }
  
  public void a(Menu paramMenu) {}
  
  public void a(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public void a(View paramView, Bundle paramBundle) {}
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(w));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(x));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(y);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(f);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(g);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(r);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(l);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(m);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(o);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(p);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(z);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(A);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(E);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(D);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(B);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(C);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(L);
    if (s != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(s);
    }
    if (t != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(t);
    }
    if (v != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(v);
    }
    if (h != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(h);
    }
    if (d != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(d);
    }
    if (e != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(e);
    }
    if (i != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(i);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(k);
    }
    if (G != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(G);
    }
    if (H != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(H);
    }
    if (I != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(I);
    }
    if (J != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(I);
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(b);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(c);
    }
    if (M != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      M.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if (u != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + u + ":");
      u.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  final boolean a()
  {
    return r > 0;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public final FragmentActivity b()
  {
    return t;
  }
  
  public LayoutInflater b(Bundle paramBundle)
  {
    return t.getLayoutInflater();
  }
  
  View b(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (u != null) {
      u.i();
    }
    return a(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void b(Menu paramMenu) {}
  
  boolean b(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!z)
    {
      boolean bool1 = bool3;
      if (D)
      {
        bool1 = bool3;
        if (E)
        {
          bool1 = true;
          a(paramMenu, paramMenuInflater);
        }
      }
      bool2 = bool1;
      if (u != null) {
        bool2 = bool1 | u.a(paramMenu, paramMenuInflater);
      }
    }
    return bool2;
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public final Resources c()
  {
    if (t == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    return t.getResources();
  }
  
  public void c(Bundle paramBundle)
  {
    F = true;
  }
  
  boolean c(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!z)
    {
      boolean bool1 = bool3;
      if (D)
      {
        bool1 = bool3;
        if (E)
        {
          bool1 = true;
          a(paramMenu);
        }
      }
      bool2 = bool1;
      if (u != null) {
        bool2 = bool1 | u.a(paramMenu);
      }
    }
    return bool2;
  }
  
  boolean c(MenuItem paramMenuItem)
  {
    if (!z)
    {
      if ((D) && (E) && (a(paramMenuItem))) {}
      while ((u != null) && (u.a(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  public void d(Bundle paramBundle)
  {
    F = true;
  }
  
  void d(Menu paramMenu)
  {
    if (!z)
    {
      if ((D) && (E)) {
        b(paramMenu);
      }
      if (u != null) {
        u.b(paramMenu);
      }
    }
  }
  
  public final boolean d()
  {
    return A;
  }
  
  boolean d(MenuItem paramMenuItem)
  {
    if (!z)
    {
      if (b(paramMenuItem)) {}
      while ((u != null) && (u.b(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  public void e()
  {
    F = true;
    if (!N)
    {
      N = true;
      if (!O)
      {
        O = true;
        M = t.a(g, N, false);
      }
      if (M != null) {
        M.b();
      }
    }
  }
  
  public void e(Bundle paramBundle)
  {
    F = true;
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public void f()
  {
    F = true;
  }
  
  public void f(Bundle paramBundle) {}
  
  public void g()
  {
    F = true;
  }
  
  void g(Bundle paramBundle)
  {
    if (u != null) {
      u.i();
    }
    F = false;
    c(paramBundle);
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        if (u == null) {
          n();
        }
        u.a(paramBundle, null);
        u.j();
      }
    }
  }
  
  public void h()
  {
    F = true;
  }
  
  void h(Bundle paramBundle)
  {
    if (u != null) {
      u.i();
    }
    F = false;
    d(paramBundle);
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    if (u != null) {
      u.k();
    }
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  public void i()
  {
    F = true;
  }
  
  void i(Bundle paramBundle)
  {
    f(paramBundle);
    if (u != null)
    {
      Parcelable localParcelable = u.h();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  public void j()
  {
    F = true;
    if (!O)
    {
      O = true;
      M = t.a(g, N, false);
    }
    if (M != null) {
      M.h();
    }
  }
  
  void k()
  {
    f = -1;
    g = null;
    l = false;
    m = false;
    n = false;
    o = false;
    p = false;
    q = false;
    r = 0;
    s = null;
    t = null;
    w = 0;
    x = 0;
    y = null;
    z = false;
    A = false;
    C = false;
    M = null;
    N = false;
    O = false;
  }
  
  public void l()
  {
    F = true;
  }
  
  public void m() {}
  
  void n()
  {
    u = new n();
    u.a(t, new e(this), this);
  }
  
  void o()
  {
    if (u != null)
    {
      u.i();
      u.e();
    }
    F = false;
    e();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
    }
    if (u != null) {
      u.l();
    }
    if (M != null) {
      M.g();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    F = true;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    b().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onLowMemory()
  {
    F = true;
  }
  
  void p()
  {
    if (u != null)
    {
      u.i();
      u.e();
    }
    F = false;
    f();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
    }
    if (u != null)
    {
      u.m();
      u.e();
    }
  }
  
  void q()
  {
    onLowMemory();
    if (u != null) {
      u.s();
    }
  }
  
  void r()
  {
    if (u != null) {
      u.n();
    }
    F = false;
    g();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }
  }
  
  void s()
  {
    if (u != null) {
      u.o();
    }
    F = false;
    h();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }
  }
  
  void t()
  {
    if (u != null) {
      u.p();
    }
    if (N)
    {
      N = false;
      if (!O)
      {
        O = true;
        M = t.a(g, N, false);
      }
      if (M != null)
      {
        if (t.h) {
          break label83;
        }
        M.c();
      }
    }
    return;
    label83:
    M.d();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a.a(this, localStringBuilder);
    if (f >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(f);
    }
    if (w != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(w));
    }
    if (y != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(y);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  void u()
  {
    if (u != null) {
      u.q();
    }
    F = false;
    i();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    if (M != null) {
      M.f();
    }
  }
  
  void v()
  {
    if (u != null) {
      u.r();
    }
    F = false;
    j();
    if (!F) {
      throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.Fragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */