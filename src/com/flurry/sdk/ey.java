package com.flurry.sdk;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.util.List;

public class ey
{
  private static final String a = ey.class.getName();
  private static final int h = lr.b(5);
  private static final int i = lr.b(10);
  private static final int j = lr.b(15);
  private ImageView b;
  private EditText c;
  private EditText d;
  private RelativeLayout e;
  private RelativeLayout f = null;
  private TextView g;
  private List<String> k;
  private boolean l = false;
  private et m = null;
  private int n;
  private int o;
  private String p;
  private String q;
  private Dialog r;
  
  public ey(et paramet, List<String> paramList)
  {
    l = paramet.d().equals(et.a.a);
    m = paramet;
    k = paramList;
    d();
  }
  
  private void a(Context paramContext, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    paramViewGroup.addView(localLinearLayout);
    b(paramContext, localLinearLayout);
    if (l) {
      c(paramContext, localLinearLayout);
    }
    for (;;)
    {
      a(paramContext, localLinearLayout, (String)k.get(0));
      return;
      d(paramContext, localLinearLayout);
    }
  }
  
  private void a(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    Object localObject = new View(paramContext);
    ((View)localObject).setBackgroundColor(-7829368);
    paramViewGroup.addView((View)localObject, new LinearLayout.LayoutParams(-1, lr.b(1)));
    localObject = new RelativeLayout(paramContext);
    paramViewGroup.addView((View)localObject, new LinearLayout.LayoutParams(-1, lr.b(55)));
    b = new ImageView(paramContext);
    b.setId(100);
    paramViewGroup = new RelativeLayout.LayoutParams(lr.b(36), lr.b(36));
    paramViewGroup.addRule(15);
    paramViewGroup.setMargins(i, 0, i, 0);
    ((RelativeLayout)localObject).addView(b, paramViewGroup);
    ei.a().a(paramString, b);
    g = new TextView(paramContext);
    g.setText(paramString);
    g.setTextSize(2, 16.0F);
    g.setGravity(17);
    g.setTextColor(Color.parseColor("#444444"));
    paramViewGroup = new RelativeLayout.LayoutParams(-2, -1);
    paramViewGroup.addRule(1, 100);
    ((RelativeLayout)localObject).addView(g, paramViewGroup);
    paramViewGroup = new ImageView(paramContext);
    paramViewGroup.setImageBitmap(hc.e());
    paramViewGroup.setPadding(i, i, i, i);
    paramString = new RelativeLayout.LayoutParams(lr.b(36), lr.b(36));
    paramString.setMargins(i, 0, h, 0);
    paramString.addRule(11);
    paramString.addRule(15);
    ((RelativeLayout)localObject).addView(paramViewGroup, paramString);
    paramViewGroup.setOnClickListener(new ey.4(this, paramContext));
  }
  
  private void b(Context paramContext, ViewGroup paramViewGroup)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(paramContext);
    localRelativeLayout.setBackgroundColor(Color.parseColor("#36465d"));
    paramViewGroup.addView(localRelativeLayout, new RelativeLayout.LayoutParams(-1, lr.b(50)));
    paramViewGroup = new Button(paramContext);
    paramViewGroup.setText(eb.b());
    paramViewGroup.setTextColor(-1);
    paramViewGroup.setTextSize(2, 17.0F);
    paramViewGroup.setPadding(j, i, i, i);
    paramViewGroup.setGravity(17);
    paramViewGroup.setBackgroundColor(0);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -1);
    localLayoutParams.addRule(9);
    localRelativeLayout.addView(paramViewGroup, localLayoutParams);
    paramViewGroup.setOnClickListener(new ey.2(this));
    paramViewGroup = new ImageView(paramContext);
    paramViewGroup.setPadding(0, i, 0, i);
    paramViewGroup.setImageBitmap(hc.d());
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -1);
    localLayoutParams.addRule(13);
    localRelativeLayout.addView(paramViewGroup, localLayoutParams);
    paramViewGroup = new Button(paramContext);
    paramViewGroup.setText(eb.a());
    paramViewGroup.setTextColor(-1);
    paramViewGroup.setTextSize(2, 17.0F);
    paramViewGroup.setPadding(j, i, i, i);
    paramViewGroup.setGravity(17);
    paramViewGroup.setBackgroundColor(0);
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -1);
    localLayoutParams.addRule(11);
    localRelativeLayout.addView(paramViewGroup, localLayoutParams);
    paramViewGroup.setOnClickListener(new ey.3(this, paramContext));
  }
  
  private void c(Context paramContext, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(0);
    paramViewGroup.addView(localLinearLayout, new RelativeLayout.LayoutParams(-1, o / 4));
    paramViewGroup = (es)m;
    c = new EditText(paramContext);
    c.setTextSize(2, 16.0F);
    c.setTextColor(Color.parseColor("#444444"));
    c.setBackgroundColor(0);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -2);
    weight = 2.0F;
    localLayoutParams.setMargins(0, h, h, h);
    localLinearLayout.addView(c, localLayoutParams);
    if (TextUtils.isEmpty(p)) {
      if (TextUtils.isEmpty(paramViewGroup.b())) {
        c.setHint(eb.d());
      }
    }
    for (;;)
    {
      paramContext = new ImageView(paramContext);
      paramContext.setScaleType(ImageView.ScaleType.CENTER_CROP);
      localLayoutParams = new LinearLayout.LayoutParams(0, -1);
      weight = 1.0F;
      localLayoutParams.setMargins(0, j, i, j);
      localLinearLayout.addView(paramContext, localLayoutParams);
      js.a().g().post(new eb.a(paramViewGroup.c(), paramContext));
      return;
      c.setText(paramViewGroup.b());
      continue;
      c.setText(p);
    }
  }
  
  private void d()
  {
    DisplayMetrics localDisplayMetrics = lr.c();
    n = widthPixels;
    o = heightPixels;
  }
  
  private void d(Context paramContext, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    paramViewGroup.addView(localLinearLayout, new RelativeLayout.LayoutParams(-1, -2));
    paramViewGroup = (ev)m;
    d = new EditText(paramContext);
    d.setTextSize(2, 16.0F);
    d.setTextColor(-16777216);
    d.setBackgroundColor(0);
    d.setGravity(16);
    d.setPadding(i, i, 0, i);
    if (TextUtils.isEmpty(q)) {
      if (!TextUtils.isEmpty(paramViewGroup.b())) {
        d.setText(paramViewGroup.b());
      }
    }
    for (;;)
    {
      Object localObject = new LinearLayout.LayoutParams(-1, -2);
      localLinearLayout.addView(d, (ViewGroup.LayoutParams)localObject);
      localObject = new View(paramContext);
      ((View)localObject).setBackgroundColor(-7829368);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, lr.b(1)));
      paramContext = new EditText(paramContext);
      paramContext.setTextSize(2, 16.0F);
      paramContext.setTextColor(-16777216);
      paramContext.setPadding(i, i, 0, i);
      paramContext.setBackgroundColor(0);
      paramContext.setGravity(16);
      paramContext.setText(paramViewGroup.c());
      paramContext.setLines(3);
      paramContext.setFocusable(false);
      localLinearLayout.addView(paramContext, new LinearLayout.LayoutParams(-1, -2));
      return;
      d.setHint(eb.e());
      continue;
      d.setText(q);
    }
  }
  
  private void e(Context paramContext, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setOrientation(1);
    paramViewGroup.addView(localLinearLayout, new LinearLayout.LayoutParams(-1, -2));
    paramViewGroup = new RelativeLayout(paramContext);
    paramViewGroup.setBackgroundColor(Color.parseColor("#36465d"));
    localLinearLayout.addView(paramViewGroup, new LinearLayout.LayoutParams(-1, lr.b(50)));
    Object localObject = new ImageButton(paramContext);
    ((ImageButton)localObject).setScaleType(ImageView.ScaleType.CENTER_CROP);
    ((ImageButton)localObject).setId(103);
    ((ImageButton)localObject).setImageBitmap(hc.f());
    ((ImageButton)localObject).setBackgroundColor(0);
    ((ImageButton)localObject).setPadding(i, i, j, i);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(lr.b(36), lr.b(36));
    localLayoutParams.setMargins(h, 0, h, 0);
    localLayoutParams.addRule(15);
    localLayoutParams.addRule(9);
    paramViewGroup.addView((View)localObject, localLayoutParams);
    ((ImageButton)localObject).setOnClickListener(new ey.5(this, paramContext));
    localObject = new TextView(paramContext);
    ((TextView)localObject).setGravity(17);
    ((TextView)localObject).setText(eb.c());
    ((TextView)localObject).setTextSize(2, 17.0F);
    ((TextView)localObject).setTextColor(-1);
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -1);
    localLayoutParams.addRule(1, 103);
    paramViewGroup.addView((View)localObject, localLayoutParams);
    localObject = new ImageView(paramContext);
    ((ImageView)localObject).setPadding(0, i, 0, i);
    ((ImageView)localObject).setImageBitmap(hc.d());
    localLayoutParams = new RelativeLayout.LayoutParams(-2, -1);
    localLayoutParams.addRule(13);
    paramViewGroup.addView((View)localObject, localLayoutParams);
    paramViewGroup = new ey.6(this, paramContext, 0, k, paramContext);
    localObject = new ListView(paramContext);
    ((ListView)localObject).setDivider(null);
    ((ListView)localObject).setDividerHeight(0);
    localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, o / 3));
    ((ListView)localObject).setAdapter(paramViewGroup);
    ((ListView)localObject).setOnItemClickListener(new ey.7(this, paramContext));
  }
  
  public void a(Context paramContext, hi paramhi)
  {
    e = new RelativeLayout(paramContext);
    a(paramContext, e);
    f = new RelativeLayout(paramContext);
    f.setBackgroundDrawable(new ColorDrawable(0));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    f.addView(e, localLayoutParams);
    f.setBackgroundColor(Color.parseColor("#90000000"));
    r = new Dialog(paramContext);
    r.setCancelable(true);
    r.setCanceledOnTouchOutside(false);
    r.setContentView(f);
    r.setOnCancelListener(new ey.1(this, paramhi));
    r.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    r.show();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */