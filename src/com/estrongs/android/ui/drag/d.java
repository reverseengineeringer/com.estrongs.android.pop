package com.estrongs.android.ui.drag;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.view.aw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class d
{
  public static int a = 0;
  public static int b = 1;
  private final int A = 15;
  private final int B = 5;
  private int C;
  private int D;
  private Rect E = new Rect();
  private Rect F = new Rect();
  private boolean G;
  private com.estrongs.fs.h H;
  private aw I;
  private boolean J = false;
  private boolean K = false;
  private ArrayList<s> L = new ArrayList();
  private ArrayList<s> M = new ArrayList();
  private g N;
  private IBinder O;
  private View P;
  private k Q;
  private int R = 0;
  private i S = new i(this);
  private Rect T = new Rect();
  private boolean U;
  private RectF V;
  private s W;
  private InputMethodManager X;
  private int Y;
  private Context c;
  private Handler d;
  private final Vibrator e;
  private Rect f = new Rect();
  private Region g = new Region();
  private final int[] h = new int[2];
  private boolean i;
  private boolean j;
  private float k;
  private float l;
  private DisplayMetrics m = new DisplayMetrics();
  private View n;
  private float o;
  private float p;
  private int q;
  private l r;
  private Object s;
  private m t;
  private int u;
  private List<j> v;
  private final int w = 300;
  private final int x = 700;
  private boolean y;
  private final int z = 30;
  
  public d(Context paramContext)
  {
    c = paramContext;
    d = new Handler();
    q = a.a(c, 20.0F);
    e = ((Vibrator)c.getSystemService("vibrator"));
    Y = (ViewConfiguration.get(c).getScaledTouchSlop() - 1);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    if (paramInt1 >= paramInt3) {
      return paramInt3 - 1;
    }
    return paramInt1;
  }
  
  private Bitmap a(View paramView)
  {
    if (!paramView.isDrawingCacheEnabled()) {
      paramView.setDrawingCacheEnabled(true);
    }
    paramView.setDrawingCacheQuality(1048576);
    paramView.clearFocus();
    paramView.setPressed(false);
    boolean bool = paramView.willNotCacheDrawing();
    paramView.setWillNotCacheDrawing(false);
    paramView.destroyDrawingCache();
    paramView.buildDrawingCache();
    Bitmap localBitmap = paramView.getDrawingCache();
    if (localBitmap == null)
    {
      Log.e("Launcher.DragController", "failed getViewBitmap(" + paramView + ")", new RuntimeException());
      return null;
    }
    localBitmap = Bitmap.createBitmap(localBitmap);
    paramView.destroyDrawingCache();
    paramView.setWillNotCacheDrawing(bool);
    return localBitmap;
  }
  
  private s a(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    Rect localRect = f;
    ArrayList localArrayList = M;
    int i1 = localArrayList.size() - 1;
    Object localObject;
    while (i1 >= 0)
    {
      localObject = (DragActionZone)localArrayList.get(i1);
      ((DragActionZone)localObject).getHitRect(localRect);
      ((DragActionZone)localObject).getLocationOnScreen(paramArrayOfInt);
      localRect.offset(paramArrayOfInt[0] - ((DragActionZone)localObject).getLeft(), paramArrayOfInt[1] - ((DragActionZone)localObject).getTop());
      if ((localRect.contains(paramInt1, paramInt2)) && (((DragActionZone)localObject).a(localRect, paramInt1, paramInt2)))
      {
        U = true;
        R = 0;
        paramArrayOfInt[0] = (paramInt1 - paramArrayOfInt[0]);
        paramArrayOfInt[1] = (paramInt2 - paramArrayOfInt[1]);
        return (s)localObject;
      }
      i1 -= 1;
    }
    U = false;
    if ((!G) && (!E.contains(C, D))) {
      return null;
    }
    localArrayList = L;
    i1 = localArrayList.size() - 1;
    while (i1 >= 0)
    {
      localObject = (s)localArrayList.get(i1);
      ((s)localObject).getHitRect(localRect);
      ((s)localObject).getLocationOnScreen(paramArrayOfInt);
      localRect.offset(paramArrayOfInt[0] - ((s)localObject).getLeft(), paramArrayOfInt[1] - ((s)localObject).getTop());
      if (localRect.contains(paramInt1, paramInt2))
      {
        paramArrayOfInt[0] = (paramInt1 - paramArrayOfInt[0]);
        paramArrayOfInt[1] = (paramInt2 - paramArrayOfInt[1]);
        return (s)localObject;
      }
      i1 -= 1;
    }
    return null;
  }
  
  private void a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    paramInt1 = (int)k - paramInt1;
    paramInt2 = (int)l - paramInt2;
    try
    {
      paramBitmap = new m(c, paramBitmap, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, new f(this));
      paramBitmap.a(O, (int)k, (int)l);
      d.postDelayed(new h(this, paramBitmap, paramInt7, paramInt1, paramInt2), 300L);
      return;
    }
    catch (Throwable paramBitmap)
    {
      paramBitmap.printStackTrace();
    }
  }
  
  private void a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, l paraml, Object paramObject, int paramInt7)
  {
    if (X == null) {
      X = ((InputMethodManager)c.getSystemService("input_method"));
    }
    X.hideSoftInputFromWindow(O, 0);
    paramInt7 = (int)k;
    int i1 = (int)l;
    o = (k - paramInt1);
    p = (l - paramInt2);
    try
    {
      paraml = new m(c, paramBitmap, paramInt7 - paramInt1, i1 - paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, new e(this));
      t = paraml;
      paraml.a(O, (int)k, (int)l);
      paramBitmap.recycle();
      return;
    }
    catch (Throwable paraml)
    {
      for (;;)
      {
        paraml.printStackTrace();
      }
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    int[] arrayOfInt = h;
    s locals = a((int)paramFloat1, (int)paramFloat2, arrayOfInt);
    if (locals != null)
    {
      locals.d(r, arrayOfInt[0], arrayOfInt[1], (int)o, (int)p, t, s);
      if (locals.e(r, arrayOfInt[0], arrayOfInt[1], (int)o, (int)p, t, s))
      {
        locals.a(r, arrayOfInt[0], arrayOfInt[1], (int)o, (int)p, t, s);
        r.a((View)locals, true);
        return true;
      }
      r.a((View)locals, false);
      return true;
    }
    return false;
  }
  
  private void g()
  {
    if (H == null) {}
    Object localObject3;
    Object localObject2;
    do
    {
      do
      {
        return;
        i = true;
        localObject1 = new ArrayList();
        ((List)localObject1).addAll(I.w());
        s = localObject1;
        localObject3 = H.getAbsolutePath();
        localObject1 = I.D();
        localObject2 = (j)((Map)localObject1).get(localObject3);
      } while (localObject2 == null);
      n = ((j)localObject2).b();
      localObject4 = n.getBackground();
      n.setBackgroundDrawable(null);
      localObject2 = a(n);
      n.setBackgroundDrawable((Drawable)localObject4);
      ((Map)localObject1).remove(localObject3);
      localObject3 = new ArrayList();
      localObject4 = ((Map)localObject1).keySet().iterator();
      while (((Iterator)localObject4).hasNext())
      {
        String str1 = (String)((Iterator)localObject4).next();
        j localj = (j)((Map)localObject1).get(str1);
        if (!((List)localObject3).contains(localj))
        {
          String str2 = aw.a(localj.b());
          if ((str2 != null) && (str2.equals(str1)))
          {
            ((List)localObject3).add(localj);
          }
          else
          {
            localj.a(null);
            ((List)localObject3).add(localj);
          }
        }
      }
      v = ((List)localObject3);
    } while (localObject2 == null);
    Object localObject1 = h;
    n.getLocationOnScreen((int[])localObject1);
    a((Bitmap)localObject2, localObject1[0], localObject1[1], 0, 0, ((Bitmap)localObject2).getWidth(), ((Bitmap)localObject2).getHeight(), r, s, u);
    int i4 = I.C().getFirstVisiblePosition();
    I.C().getLastVisiblePosition();
    int i5 = c.getResources().getDisplayMetrics().widthPixels;
    int i6 = c.getResources().getDisplayMetrics().heightPixels;
    y = false;
    if (v.size() <= 8) {}
    int i2;
    for (int i1 = v.size();; i1 = 8)
    {
      i2 = 0;
      for (;;)
      {
        if (i2 >= i1) {
          break label643;
        }
        localObject2 = (j)v.get(i2);
        localObject1 = ((j)localObject2).c();
        if (localObject1 != null) {
          break label751;
        }
        localObject3 = ((j)localObject2).b();
        if (localObject3 != null) {
          break;
        }
        i2 += 1;
      }
    }
    Object localObject4 = ((View)localObject3).getBackground();
    ((View)localObject3).setBackgroundDrawable(null);
    localObject1 = a((View)localObject3);
    ((View)localObject3).setBackgroundDrawable((Drawable)localObject4);
    label634:
    label643:
    label751:
    for (int i3 = 1;; i3 = 0)
    {
      if (localObject1 == null)
      {
        h();
        return;
      }
      localObject3 = h;
      if (((j)localObject2).b() != null) {
        ((j)localObject2).b().getLocationOnScreen((int[])localObject3);
      }
      for (;;)
      {
        a((Bitmap)localObject1, localObject3[0], localObject3[1], 0, 0, ((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), i2 + 1);
        if (i3 == 0) {
          break;
        }
        ((Bitmap)localObject1).recycle();
        break;
        if (i5 - ((Bitmap)localObject1).getWidth() <= 0) {
          localObject3[0] = 0;
        }
        for (;;)
        {
          if (((j)localObject2).a() >= i4) {
            break label634;
          }
          localObject3[1] = 0;
          break;
          localObject3[0] = new Random().nextInt(i5 - ((Bitmap)localObject1).getWidth());
        }
        localObject3[1] = i6;
      }
      I.e();
      E = Q.e();
      F = new Rect(E.left + q, E.top + q, E.right - q, E.bottom - q);
      if (N == null) {
        break;
      }
      N.a(r, s, u);
      return;
    }
  }
  
  private void h()
  {
    j = false;
    if (i)
    {
      i = false;
      if (n != null) {
        n = null;
      }
      if (v != null) {
        v.clear();
      }
      if (N != null) {
        N.a();
      }
      if (t != null)
      {
        t.c();
        t = null;
      }
      r = null;
      s = null;
      if (L != null) {
        L.clear();
      }
      if (M != null) {
        M.clear();
      }
    }
  }
  
  private void i()
  {
    ((WindowManager)c.getSystemService("window")).getDefaultDisplay().getMetrics(m);
  }
  
  public void a()
  {
    h();
  }
  
  public void a(g paramg)
  {
    N = paramg;
  }
  
  public void a(k paramk)
  {
    Q = paramk;
  }
  
  public void a(s params)
  {
    L.add(params);
  }
  
  public void a(com.estrongs.fs.h paramh, aw paramaw, l paraml, int paramInt, boolean paramBoolean)
  {
    H = paramh;
    I = paramaw;
    u = paramInt;
    r = paraml;
    j = true;
    U = false;
    G = false;
    if ((paramBoolean) && (H != null)) {
      g();
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    return i;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    int i2;
    int i3;
    int i4;
    int i5;
    if (i1 == 0)
    {
      i();
      if (J) {
        K = true;
      }
      J = true;
      i2 = (int)paramMotionEvent.getRawX();
      i3 = (int)paramMotionEvent.getRawY();
      i4 = a(i2, 0, m.widthPixels);
      i5 = a(i3, 0, m.heightPixels);
      switch (i1)
      {
      }
    }
    for (;;)
    {
      return i;
      J = false;
      K = false;
      break;
      if ((!i) && (j) && (!T.contains(i2, i3)))
      {
        i = true;
        g();
        continue;
        k = i4;
        l = i5;
        C = ((int)k);
        D = ((int)l);
        W = null;
        T.set(i2 - Y, i3 - Y, i2 + Y, i3 + Y);
        continue;
        if (i) {
          a(i4, i5);
        }
        h();
      }
    }
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return (P != null) && (P.dispatchUnhandledMove(paramView, paramInt));
  }
  
  public void b(s params)
  {
    M.add(params);
  }
  
  public boolean b()
  {
    return K;
  }
  
  public boolean b(MotionEvent paramMotionEvent)
  {
    if (!i) {
      return false;
    }
    int i1 = paramMotionEvent.getAction();
    int i2 = a((int)paramMotionEvent.getRawX(), 0, m.widthPixels);
    int i3 = a((int)paramMotionEvent.getRawY(), 0, m.heightPixels);
    switch (i1)
    {
    }
    for (;;)
    {
      return true;
      k = i2;
      l = i3;
      if ((E.contains(i2, i3)) && (!F.contains(i2, i3)))
      {
        R = 1;
        d.postDelayed(S, 500L);
      }
      else
      {
        R = 0;
        continue;
        if (t != null) {
          t.a((int)paramMotionEvent.getRawX(), (int)paramMotionEvent.getRawY());
        }
        C = ((int)paramMotionEvent.getRawX());
        D = ((int)paramMotionEvent.getRawY());
        paramMotionEvent = h;
        s locals = a(i2, i3, paramMotionEvent);
        if (locals != null) {
          if (W == locals) {
            locals.c(r, paramMotionEvent[0], paramMotionEvent[1], (int)o, (int)p, t, s);
          }
        }
        boolean bool;
        for (;;)
        {
          W = locals;
          bool = false;
          if (V != null) {
            bool = V.contains(i2, i3);
          }
          if ((U) || (G)) {
            break;
          }
          if ((bool) || (i2 >= F.left) || (i2 <= E.left)) {
            break label496;
          }
          if (R != 0) {
            break;
          }
          R = 1;
          S.a(0);
          d.postDelayed(S, 500L);
          break;
          if (W != null) {
            W.d(r, paramMotionEvent[0], paramMotionEvent[1], (int)o, (int)p, t, s);
          }
          locals.b(r, paramMotionEvent[0], paramMotionEvent[1], (int)o, (int)p, t, s);
          continue;
          if (W != null) {
            W.d(r, paramMotionEvent[0], paramMotionEvent[1], (int)o, (int)p, t, s);
          }
        }
        label496:
        if ((!bool) && (i2 > F.right) && (i2 < E.right))
        {
          if (R == 0)
          {
            R = 1;
            S.a(1);
            d.postDelayed(S, 500L);
          }
        }
        else if ((!bool) && (i3 < F.top))
        {
          if (R == 0)
          {
            R = 1;
            S.a(2);
            d.postDelayed(S, 500L);
          }
        }
        else if ((!bool) && (i3 > F.bottom))
        {
          if (R == 0)
          {
            R = 1;
            S.a(3);
            d.postDelayed(S, 500L);
          }
        }
        else if (R == 1)
        {
          R = 0;
          S.a(1);
          d.removeCallbacks(S);
          continue;
          d.removeCallbacks(S);
          if (i) {
            a(i2, i3);
          }
          h();
          continue;
          a();
        }
      }
    }
  }
  
  public void c()
  {
    M.clear();
    L.clear();
  }
  
  public void d()
  {
    G = true;
  }
  
  public Object e()
  {
    if (i) {
      return s;
    }
    return null;
  }
  
  public boolean f()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */