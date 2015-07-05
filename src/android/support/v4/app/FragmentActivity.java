package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class FragmentActivity
  extends Activity
{
  final Handler a = new g(this);
  final n b = new n();
  final k c = new h(this);
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  HashMap<String, y> l;
  y m;
  
  private static String a(View paramView)
  {
    char c3 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    char c1;
    label118:
    label135:
    label152:
    label169:
    label186:
    label203:
    label220:
    label244:
    label261:
    int n;
    Object localObject;
    switch (paramView.getVisibility())
    {
    default: 
      localStringBuilder.append('.');
      if (paramView.isFocusable())
      {
        c1 = 'F';
        localStringBuilder.append(c1);
        if (!paramView.isEnabled()) {
          break label562;
        }
        c1 = 'E';
        localStringBuilder.append(c1);
        if (!paramView.willNotDraw()) {
          break label568;
        }
        c1 = '.';
        localStringBuilder.append(c1);
        if (!paramView.isHorizontalScrollBarEnabled()) {
          break label574;
        }
        c1 = 'H';
        localStringBuilder.append(c1);
        if (!paramView.isVerticalScrollBarEnabled()) {
          break label580;
        }
        c1 = 'V';
        localStringBuilder.append(c1);
        if (!paramView.isClickable()) {
          break label586;
        }
        c1 = 'C';
        localStringBuilder.append(c1);
        if (!paramView.isLongClickable()) {
          break label592;
        }
        c1 = 'L';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        if (!paramView.isFocused()) {
          break label598;
        }
        c1 = c3;
        localStringBuilder.append(c1);
        if (!paramView.isSelected()) {
          break label604;
        }
        c1 = 'S';
        localStringBuilder.append(c1);
        c1 = c2;
        if (paramView.isPressed()) {
          c1 = 'P';
        }
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        n = paramView.getId();
        if (n != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(n));
          localObject = paramView.getResources();
          if ((n != 0) && (localObject != null)) {
            switch (0xFF000000 & n)
            {
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      try
      {
        paramView = ((Resources)localObject).getResourcePackageName(n);
        String str = ((Resources)localObject).getResourceTypeName(n);
        localObject = ((Resources)localObject).getResourceEntryName(n);
        localStringBuilder.append(" ");
        localStringBuilder.append(paramView);
        localStringBuilder.append(":");
        localStringBuilder.append(str);
        localStringBuilder.append("/");
        localStringBuilder.append((String)localObject);
      }
      catch (Resources.NotFoundException paramView)
      {
        label562:
        label568:
        label574:
        label580:
        label586:
        label592:
        label598:
        label604:
        continue;
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append('V');
      break;
      localStringBuilder.append('I');
      break;
      localStringBuilder.append('G');
      break;
      c1 = '.';
      break label118;
      c1 = '.';
      break label135;
      c1 = 'D';
      break label152;
      c1 = '.';
      break label169;
      c1 = '.';
      break label186;
      c1 = '.';
      break label203;
      c1 = '.';
      break label220;
      c1 = '.';
      break label244;
      c1 = '.';
      break label261;
      paramView = "app";
      continue;
      paramView = "android";
    }
  }
  
  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null) {
      paramPrintWriter.println("null");
    }
    for (;;)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int i1 = paramView.getChildCount();
        if (i1 > 0)
        {
          paramString = paramString + "  ";
          int n = 0;
          while (n < i1)
          {
            a(paramString, paramPrintWriter, paramView.getChildAt(n));
            n += 1;
          }
        }
      }
    }
  }
  
  y a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l == null) {
      l = new HashMap();
    }
    y localy = (y)l.get(paramString);
    if (localy == null)
    {
      if (paramBoolean2)
      {
        localy = new y(paramString, this, paramBoolean1);
        l.put(paramString, localy);
      }
      return localy;
    }
    localy.a(this);
    return localy;
  }
  
  protected void a()
  {
    b.m();
  }
  
  public void a(Fragment paramFragment) {}
  
  void a(String paramString)
  {
    if (l != null)
    {
      y localy = (y)l.get(paramString);
      if ((localy != null) && (!g))
      {
        localy.h();
        l.remove(paramString);
      }
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (!g)
    {
      g = true;
      h = paramBoolean;
      a.removeMessages(1);
      d();
    }
  }
  
  public Object b()
  {
    return null;
  }
  
  public void c()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a.a(this);
      return;
    }
    i = true;
  }
  
  void d()
  {
    if (k)
    {
      k = false;
      if (m != null)
      {
        if (h) {
          break label41;
        }
        m.c();
      }
    }
    for (;;)
    {
      b.p();
      return;
      label41:
      m.d();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(d);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(e);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(f);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(g);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(k);
    if (m != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(m)));
      paramPrintWriter.println(":");
      m.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    b.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    b.i();
    int n = paramInt1 >> 16;
    if (n != 0)
    {
      n -= 1;
      if ((b.f == null) || (n < 0) || (n >= b.f.size()))
      {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      Fragment localFragment = (Fragment)b.f.get(n);
      if (localFragment == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      localFragment.a(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!b.c()) {
      finish();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    b.a(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b.a(this, c, null);
    if (getLayoutInflater().getFactory() == null) {
      getLayoutInflater().setFactory(this);
    }
    super.onCreate(paramBundle);
    j localj = (j)getLastNonConfigurationInstance();
    if (localj != null) {
      l = e;
    }
    Parcelable localParcelable;
    n localn;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localn = b;
      if (localj == null) {
        break label101;
      }
    }
    label101:
    for (paramBundle = d;; paramBundle = null)
    {
      localn.a(localParcelable, paramBundle);
      b.j();
      return;
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      boolean bool2 = b.a(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11) {
        return bool1 | bool2;
      }
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    Object localObject = null;
    if (!"fragment".equals(paramString)) {
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    }
    paramString = paramAttributeSet.getAttributeValue(null, "class");
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, i.a);
    String str1 = paramString;
    if (paramString == null) {
      str1 = paramContext.getString(0);
    }
    int i1 = paramContext.getResourceId(1, -1);
    String str2 = paramContext.getString(2);
    paramContext.recycle();
    if (0 != 0) {
      throw new NullPointerException();
    }
    if ((-1 == 0) && (i1 == -1) && (str2 == null)) {
      throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
    }
    paramContext = (Context)localObject;
    if (i1 != -1) {
      paramContext = b.a(i1);
    }
    paramString = paramContext;
    if (paramContext == null)
    {
      paramString = paramContext;
      if (str2 != null) {
        paramString = b.a(str2);
      }
    }
    paramContext = paramString;
    if (paramString == null)
    {
      paramContext = paramString;
      if (-1 != 0) {
        paramContext = b.a(0);
      }
    }
    if (n.a) {
      Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(i1) + " fname=" + str1 + " existing=" + paramContext);
    }
    int n;
    if (paramContext == null)
    {
      paramContext = Fragment.a(this, str1);
      o = true;
      if (i1 != 0)
      {
        n = i1;
        w = n;
        x = 0;
        y = str2;
        p = true;
        s = b;
        paramContext.a(this, paramAttributeSet, d);
        b.a(paramContext, true);
      }
    }
    for (;;)
    {
      if (I != null) {
        break label498;
      }
      throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
      n = 0;
      break;
      if (p) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i1) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + str1);
      }
      p = true;
      if (!C) {
        paramContext.a(this, paramAttributeSet, d);
      }
      b.b(paramContext);
    }
    label498:
    if (i1 != 0) {
      I.setId(i1);
    }
    if (I.getTag() == null) {
      I.setTag(str2);
    }
    return I;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    a(false);
    b.r();
    if (m != null) {
      m.h();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    b.s();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return b.a(paramMenuItem);
    }
    return b.b(paramMenuItem);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    b.i();
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      b.b(paramMenu);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    e = false;
    if (a.hasMessages(2))
    {
      a.removeMessages(2);
      a();
    }
    b.n();
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    a.removeMessages(2);
    a();
    b.e();
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool2 = false;
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (i)
      {
        i = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      boolean bool1 = bool2;
      if ((super.onPreparePanel(paramInt, paramView, paramMenu) | b.a(paramMenu)))
      {
        bool1 = bool2;
        if (paramMenu.hasVisibleItems()) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    a.sendEmptyMessage(2);
    e = true;
    b.e();
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    int i2 = 0;
    int i1 = 0;
    if (f) {
      a(true);
    }
    Object localObject1 = b();
    ArrayList localArrayList = b.g();
    int n = i2;
    if (l != null)
    {
      localObject2 = new y[l.size()];
      l.values().toArray((Object[])localObject2);
      n = i2;
      if (localObject2 != null)
      {
        n = 0;
        if (i1 < localObject2.length)
        {
          Object localObject3 = localObject2[i1];
          if (g) {
            n = 1;
          }
          for (;;)
          {
            i1 += 1;
            break;
            ((y)localObject3).h();
            l.remove(d);
          }
        }
      }
    }
    if ((localArrayList == null) && (n == 0) && (localObject1 == null)) {
      return null;
    }
    Object localObject2 = new j();
    a = null;
    b = localObject1;
    c = null;
    d = localArrayList;
    e = l;
    return localObject2;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = b.h();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  protected void onStart()
  {
    int n = 0;
    super.onStart();
    f = false;
    g = false;
    a.removeMessages(1);
    if (!d)
    {
      d = true;
      b.k();
    }
    b.i();
    b.e();
    if (!k)
    {
      k = true;
      if (m == null) {
        break label157;
      }
      m.b();
    }
    for (;;)
    {
      j = true;
      b.l();
      if (l == null) {
        break;
      }
      y[] arrayOfy = new y[l.size()];
      l.values().toArray(arrayOfy);
      if (arrayOfy == null) {
        break;
      }
      while (n < arrayOfy.length)
      {
        y localy = arrayOfy[n];
        localy.e();
        localy.g();
        n += 1;
      }
      label157:
      if (!j)
      {
        m = a(null, k, false);
        if ((m != null) && (!m.f)) {
          m.b();
        }
      }
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    f = true;
    a.sendEmptyMessage(1);
    b.o();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0)) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */