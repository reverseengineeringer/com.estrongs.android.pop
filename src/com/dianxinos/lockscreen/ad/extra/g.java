package com.dianxinos.lockscreen.ad.extra;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.lockscreen.aa;
import com.dianxinos.lockscreen.ab;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;
import com.duapps.ad.c;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;

public class g
  extends BaseCardView
{
  private View l;
  private View m;
  private int n;
  private int o;
  private ImageView p;
  private ImageView q;
  private RoundedImageView r;
  
  public g(Context paramContext, c paramc)
  {
    this(paramContext, paramc, false);
  }
  
  public g(Context paramContext, c paramc, boolean paramBoolean)
  {
    super(paramContext, paramc, paramBoolean);
    b();
  }
  
  protected void a()
  {
    if (k) {
      return;
    }
    f = new DisplayImageOptions.Builder().showImageOnLoading(ab.screenlock_samll_icon_default).showImageForEmptyUri(ab.screenlock_samll_icon_default).showImageOnFail(ab.screenlock_samll_icon_default).bitmapConfig(Bitmap.Config.RGB_565).decodingOptions(new BitmapFactory.Options()).cacheInMemory(false).cacheOnDisk(true).build();
    g = new DisplayImageOptions.Builder().showImageOnLoading(ab.screenlock_big_img_bg).showImageForEmptyUri(ab.screenlock_big_img_bg).showImageOnFail(ab.screenlock_big_img_bg).bitmapConfig(Bitmap.Config.RGB_565).decodingOptions(new BitmapFactory.Options()).cacheInMemory(false).cacheOnDisk(true).build();
    n = (a.getResources().getDisplayMetrics().widthPixels - a.getResources().getDimensionPixelSize(aa.sl_big_ad_margin) * 2);
    o = ((int)(n / 1.9D));
    l = inflate(a, ad.view_screenlock_big, this);
    h = ((TextView)l.findViewById(ac.tv_ad_title));
    j = ((ImageView)l.findViewById(ac.ic_small));
    p = ((ImageView)l.findViewById(ac.ic_applock_big_ad));
    q = ((ImageView)l.findViewById(ac.ic_big_image_bg));
    i = ((TextView)l.findViewById(ac.btn_click));
    r = ((RoundedImageView)l.findViewById(ac.ic_big_image));
    m = l.findViewById(ac.big_image_layout);
    ViewGroup.LayoutParams localLayoutParams = m.getLayoutParams();
    height = o;
    m.setLayoutParams(localLayoutParams);
    m.setVisibility(8);
    k = true;
    b = 1;
  }
  
  protected void a(View paramView) {}
  
  protected void b()
  {
    a();
    h.setText(c.a());
    i.setText(c.e());
    m.setVisibility(0);
    e.displayImage(c.c(), j, f);
    e.displayImage(c.d(), r, g, new h(this));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */