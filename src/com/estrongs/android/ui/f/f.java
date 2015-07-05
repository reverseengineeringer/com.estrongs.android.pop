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
import com.estrongs.android.ui.theme.al;
import java.util.HashMap;
import java.util.Map;

public class f
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
  
  public f(Context paramContext, View paramView1, View paramView2, String paramString)
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
    setAnimationStyle(2131492867);
    Object localObject1 = com.estrongs.android.pop.esclasses.g.a(a).inflate(2130903246, null);
    b = ((View)localObject1).findViewById(2131362716);
    b.measure(0, 0);
    setHeight(b.getMeasuredHeight());
    setContentView((View)localObject1);
    setBackgroundDrawable(a.getResources().getDrawable(2130837568));
    localObject1 = (ImageView)b.findViewById(2131362717);
    Object localObject2 = (ImageView)b.findViewById(2131362718);
    ImageView localImageView = (ImageView)b.findViewById(2131362719);
    ((ImageView)localObject1).setBackgroundDrawable(a.getResources().getDrawable(2130838019));
    ((ImageView)localObject2).setBackgroundDrawable(a.getResources().getDrawable(2130838020));
    localImageView.setBackgroundDrawable(a.getResources().getDrawable(2130838021));
    ((RelativeLayout.LayoutParams)b.getLayoutParams()).addRule(10, -1);
    localObject1 = new g(this);
    localObject2 = (LinearLayout)b.findViewById(2131362720);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "all");
    g.put("all", (ImageView)((LinearLayout)localObject2).findViewById(2131362721));
    h.put("all", Integer.valueOf(2130838015));
    i.put("all", Integer.valueOf(2130838016));
    j.put("all", Integer.valueOf(2130838227));
    localObject2 = (LinearLayout)b.findViewById(2131362722);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "image");
    g.put("image", (ImageView)((LinearLayout)localObject2).findViewById(2131362723));
    h.put("image", Integer.valueOf(2130838024));
    i.put("image", Integer.valueOf(2130838025));
    j.put("image", Integer.valueOf(2130838025));
    localObject2 = (LinearLayout)b.findViewById(2131362724);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "music");
    g.put("music", (ImageView)((LinearLayout)localObject2).findViewById(2131362725));
    h.put("music", Integer.valueOf(2130838026));
    i.put("music", Integer.valueOf(2130838027));
    j.put("music", Integer.valueOf(2130838027));
    localObject2 = (LinearLayout)b.findViewById(2131362726);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "video");
    g.put("video", (ImageView)((LinearLayout)localObject2).findViewById(2131362727));
    h.put("video", Integer.valueOf(2130838028));
    i.put("video", Integer.valueOf(2130838029));
    j.put("video", Integer.valueOf(2130838029));
    localObject2 = (LinearLayout)b.findViewById(2131362728);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "apk");
    g.put("apk", (ImageView)((LinearLayout)localObject2).findViewById(2131362729));
    h.put("apk", Integer.valueOf(2130838017));
    i.put("apk", Integer.valueOf(2130838018));
    j.put("apk", Integer.valueOf(2130838018));
    localObject2 = (LinearLayout)b.findViewById(2131362730);
    ((LinearLayout)localObject2).setOnClickListener((View.OnClickListener)localObject1);
    f.put(localObject2, "document");
    g.put("document", (ImageView)((LinearLayout)localObject2).findViewById(2131362731));
    h.put("document", Integer.valueOf(2130838022));
    i.put("document", Integer.valueOf(2130838023));
    j.put("document", Integer.valueOf(2130838023));
    l = b.findViewById(2131362732);
    k = ((LinearLayout)b.findViewById(2131362733));
    k.setOnClickListener(new h(this));
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
    int i3 = a.getResources().getDrawable(2130838020).getIntrinsicWidth() / 2;
    b.findViewById(2131362717)).getLayoutParams().width = (i1 + i2 - i3 - m / 2);
    showAsDropDown(c, -(i1 - m / 2), 12);
  }
  
  public void b(int paramInt)
  {
    b.findViewById(2131361825).setVisibility(paramInt);
    b.findViewById(2131361986).setVisibility(paramInt);
    b.measure(0, 0);
    setHeight(b.getMeasuredHeight());
  }
  
  public void b(String paramString)
  {
    if (e != null)
    {
      Integer localInteger = (Integer)h.get(e);
      if (localInteger != null) {
        ((ImageView)g.get(e)).setImageDrawable(al.a(a).a(localInteger.intValue()));
      }
    }
    if (paramString != null) {}
    for (;;)
    {
      e = paramString;
      paramString = (Integer)i.get(e);
      if (paramString != null) {
        ((ImageView)g.get(e)).setImageDrawable(al.a(a).a(paramString.intValue()));
      }
      return;
      paramString = "all";
    }
  }
  
  public Drawable c(String paramString)
  {
    al localal = al.a(a);
    Map localMap = j;
    String str = paramString;
    if (paramString == null) {
      str = "all";
    }
    return localal.a(((Integer)localMap.get(str)).intValue());
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
 * Qualified Name:     com.estrongs.android.ui.f.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */