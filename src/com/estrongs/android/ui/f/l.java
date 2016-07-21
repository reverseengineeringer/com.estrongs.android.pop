package com.estrongs.android.ui.f;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;
import java.util.HashMap;
import java.util.Map;

public class l
  extends PopupWindow
  implements View.OnKeyListener
{
  private Context a;
  private View b;
  private View c;
  private Rect d;
  private String e = "all";
  private Map<View, String> f = new HashMap();
  private Map<String, ImageView> g = new HashMap();
  private Map<String, Integer> h = new HashMap();
  private Map<String, Integer> i = new HashMap();
  private Map<String, Integer> j = new HashMap();
  private LinearLayout k;
  private View l;
  private int m = 6;
  private View n;
  
  public l(Context paramContext, View paramView1, View paramView2, String paramString)
  {
    super(paramContext);
    a = paramContext;
    b(paramView2);
    a(paramView1);
    c();
    if (paramString != null) {
      b(paramString);
    }
  }
  
  private void b(View paramView)
  {
    c = paramView;
  }
  
  private Rect c(View paramView)
  {
    if (d == null)
    {
      d = new Rect();
      int[] arrayOfInt = new int[2];
      paramView.getLocationInWindow(arrayOfInt);
      d = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getMeasuredWidth(), arrayOfInt[1] + paramView.getMeasuredHeight());
    }
    return d;
  }
  
  private void c()
  {
    setWindowLayoutMode(0, 0);
    c(n);
    setWidth(d.right - d.left - m);
    setAnimationStyle(2131296266);
    Object localObject1 = k.a(a).inflate(2130903417, null);
    b = ((View)localObject1).findViewById(2131625490);
    b.measure(0, 0);
    setHeight(b.getMeasuredHeight());
    setContentView((View)localObject1);
    setBackgroundDrawable(a.getResources().getDrawable(2130837692));
    localObject1 = (ImageView)b.findViewById(2131625491);
    Object localObject2 = (ImageView)b.findViewById(2131625492);
    ImageView localImageView = (ImageView)b.findViewById(2131625493);
    ((ImageView)localObject1).setBackgroundDrawable(a.getResources().getDrawable(2130838390));
    ((ImageView)localObject2).setBackgroundDrawable(a.getResources().getDrawable(2130838391));
    localImageView.setBackgroundDrawable(a.getResources().getDrawable(2130838392));
    ((RelativeLayout.LayoutParams)b.getLayoutParams()).addRule(10, -1);
    localObject1 = new m(this);
    localObject2 = (LinearLayout)b.findViewById(2131625494);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "all");
    g.put("all", (ImageView)((LinearLayout)localObject2).findViewById(2131625495));
    h.put("all", Integer.valueOf(2130838386));
    i.put("all", Integer.valueOf(2130838387));
    j.put("all", Integer.valueOf(2130838387));
    localObject2 = (LinearLayout)b.findViewById(2131625496);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "image");
    g.put("image", (ImageView)((LinearLayout)localObject2).findViewById(2131625497));
    h.put("image", Integer.valueOf(2130838395));
    i.put("image", Integer.valueOf(2130838396));
    j.put("image", Integer.valueOf(2130838396));
    localObject2 = (LinearLayout)b.findViewById(2131625498);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "music");
    g.put("music", (ImageView)((LinearLayout)localObject2).findViewById(2131625499));
    h.put("music", Integer.valueOf(2130838397));
    i.put("music", Integer.valueOf(2130838398));
    j.put("music", Integer.valueOf(2130838398));
    localObject2 = (LinearLayout)b.findViewById(2131625500);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "video");
    g.put("video", (ImageView)((LinearLayout)localObject2).findViewById(2131625501));
    h.put("video", Integer.valueOf(2130838399));
    i.put("video", Integer.valueOf(2130838400));
    j.put("video", Integer.valueOf(2130838400));
    localObject2 = (LinearLayout)b.findViewById(2131625502);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "apk");
    g.put("apk", (ImageView)((LinearLayout)localObject2).findViewById(2131625503));
    h.put("apk", Integer.valueOf(2130838388));
    i.put("apk", Integer.valueOf(2130838389));
    j.put("apk", Integer.valueOf(2130838389));
    localObject2 = (LinearLayout)b.findViewById(2131625504);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "document");
    g.put("document", (ImageView)((LinearLayout)localObject2).findViewById(2131625505));
    h.put("document", Integer.valueOf(2130838393));
    i.put("document", Integer.valueOf(2130838394));
    j.put("document", Integer.valueOf(2130838394));
    l = b.findViewById(2131625506);
    k = ((LinearLayout)b.findViewById(2131625507));
    k.setOnClickListener(new n(this));
    setFocusable(true);
  }
  
  protected void a() {}
  
  public void a(int paramInt)
  {
    k.setVisibility(paramInt);
    b.measure(0, 0);
    setHeight(b.getMeasuredHeight());
  }
  
  public void a(View paramView)
  {
    n = paramView;
  }
  
  protected void a(String paramString) {}
  
  public void b()
  {
    int[] arrayOfInt = new int[2];
    c.getLocationInWindow(arrayOfInt);
    int i1 = arrayOfInt[0];
    n.getLocationInWindow(arrayOfInt);
    i1 -= arrayOfInt[0];
    int i2 = c.getWidth() * 2 / 3;
    int i3 = a.getResources().getDrawable(2130838391).getIntrinsicWidth() / 2;
    b.findViewById(2131625491)).getLayoutParams().width = (i1 + i2 - i3 - m / 2);
    showAsDropDown(c, -(i1 - m / 2), 12);
  }
  
  public void b(int paramInt)
  {
    b.findViewById(2131624055).setVisibility(paramInt);
    b.findViewById(2131624499).setVisibility(paramInt);
    b.measure(0, 0);
    setHeight(b.getMeasuredHeight());
  }
  
  public void b(String paramString)
  {
    if (e != null)
    {
      Integer localInteger = (Integer)h.get(e);
      if (localInteger != null) {
        ((ImageView)g.get(e)).setImageDrawable(at.a(a).a(localInteger.intValue()));
      }
    }
    if (paramString != null) {}
    for (;;)
    {
      e = paramString;
      paramString = (Integer)i.get(e);
      if (paramString != null) {
        ((ImageView)g.get(e)).setImageDrawable(at.a(a).a(paramString.intValue()));
      }
      return;
      paramString = "all";
    }
  }
  
  public Drawable c(String paramString)
  {
    at localat = at.a(a);
    Map localMap = j;
    String str = paramString;
    if (paramString == null) {
      str = "all";
    }
    return localat.b(((Integer)localMap.get(str)).intValue(), 2131558745);
  }
  
  public void c(int paramInt)
  {
    l.setVisibility(paramInt);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      dismiss();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */