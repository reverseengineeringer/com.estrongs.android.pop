package com.flurry.sdk;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.flurry.android.AdCreative;
import com.flurry.android.ICustomAdNetworkHandler;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class gx
{
  private static final String a = gx.class.getSimpleName();
  private static final Map<Class<? extends ViewGroup>, gx.c> b = b();
  
  private static int a(ViewGroup paramViewGroup, co paramco)
  {
    int i = paramViewGroup.getChildCount();
    if ((paramco == null) || (d.size() < 1)) {
      return i;
    }
    paramViewGroup = d.get(0)).d;
    if (paramViewGroup != null)
    {
      paramViewGroup = e.split("-");
      if ((paramViewGroup.length == 2) && ("t".equals(paramViewGroup[0]))) {
        return 0;
      }
    }
    return i;
  }
  
  private static gx.c a(ViewGroup paramViewGroup)
  {
    return (gx.c)b.get(paramViewGroup.getClass());
  }
  
  public static void a(Context paramContext, t paramt)
  {
    if ((paramContext == null) || (paramt == null)) {
      return;
    }
    au localau = paramt.l();
    co localco = localau.a();
    Object localObject = (cj)d.get(0);
    int i = a;
    String str = c;
    localObject = fd.a(d);
    ICustomAdNetworkHandler localICustomAdNetworkHandler = j.a().c();
    gw localgw = i.a().p();
    if ((i == 4) && (localICustomAdNetworkHandler != null)) {}
    for (localObject = localICustomAdNetworkHandler.getAdFromNetwork(paramContext, (AdCreative)localObject, str); localObject == null; localObject = localgw.b(paramContext, paramt))
    {
      kg.e(a, "Failed to create view for ad network: " + str + ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view.");
      localObject = new HashMap();
      ((Map)localObject).put("errorCode", Integer.toString(ba.o.a()));
      if (i == 4) {
        ((Map)localObject).put("binding_3rd_party", Integer.toString(4));
      }
      fa.a(bb.g, (Map)localObject, paramContext, paramt, localau, 1);
      return;
    }
    a(paramt, (gt)localObject, localco);
  }
  
  private static void a(t paramt, gt paramgt, co paramco)
  {
    if ((paramt == null) || (paramgt == null) || (paramco == null)) {
      return;
    }
    ViewGroup localViewGroup1 = paramt.g();
    RelativeLayout localRelativeLayout = paramt.y();
    if (localRelativeLayout == null)
    {
      localRelativeLayout = new RelativeLayout(paramt.f());
      paramt.a(localRelativeLayout);
    }
    for (;;)
    {
      ViewGroup localViewGroup2 = (ViewGroup)localRelativeLayout.getParent();
      if (localViewGroup2 != null) {
        localViewGroup2.removeView(localRelativeLayout);
      }
      localRelativeLayout.removeAllViews();
      localViewGroup2 = (ViewGroup)paramgt.getParent();
      if (localViewGroup2 != null) {
        localViewGroup2.removeView(paramgt);
      }
      localRelativeLayout.addView(paramgt, new RelativeLayout.LayoutParams(-1, -1));
      paramgt.initLayout();
      paramgt = b(localViewGroup1, paramco);
      if (paramgt != null)
      {
        localRelativeLayout.setLayoutParams(paramgt);
        kg.a(3, a, "banner ad holder layout params = " + paramgt.getClass().getName() + " {width = " + width + ", height = " + height + "} for banner ad with adSpaceName = " + paramt.h());
      }
      localViewGroup1.setBackgroundColor(369098752);
      localViewGroup1.addView(localRelativeLayout, a(localViewGroup1, paramco));
      return;
    }
  }
  
  private static ViewGroup.LayoutParams b(ViewGroup paramViewGroup, co paramco)
  {
    if ((paramco == null) || (d.size() < 1)) {
      paramco = null;
    }
    Object localObject;
    do
    {
      return paramco;
      paramco = d.get(0)).d;
      if (paramco == null) {
        return null;
      }
      localObject = a(paramViewGroup);
      if (localObject == null)
      {
        kg.a(5, a, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass " + paramViewGroup.getClass().getSimpleName());
        return null;
      }
      localObject = ((gx.c)localObject).a(paramco);
      paramco = (co)localObject;
    } while (localObject != null);
    kg.a(6, a, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass " + paramViewGroup.getClass().getSimpleName());
    return (ViewGroup.LayoutParams)localObject;
  }
  
  private static Map<Class<? extends ViewGroup>, gx.c> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(LinearLayout.class, new gx.d());
    localHashMap.put(AbsoluteLayout.class, new gx.a());
    localHashMap.put(FrameLayout.class, new gx.b());
    localHashMap.put(RelativeLayout.class, new gx.e());
    return Collections.unmodifiableMap(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */