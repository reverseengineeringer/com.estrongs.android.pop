package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.dianxinos.a.a.d;
import com.dianxinos.a.a.e;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.u;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;
import java.util.List;

public class g
  extends BaseAdapter
{
  private Context a;
  private List<Object> b;
  private int c;
  private SparseBooleanArray d = new SparseBooleanArray();
  private ImageLoader e;
  private com.duapps.ad.stats.c f;
  private DisplayImageOptions g;
  private com.duapps.ad.offerwall.a.j h;
  
  public g(Context paramContext, List<Object> paramList, int paramInt)
  {
    b = paramList;
    a = paramContext;
    e = com.duapps.ad.base.j.a(a);
    c = paramInt;
    g = new DisplayImageOptions.Builder().showImageOnLoading(com.dianxinos.a.a.c.v2_default_icon).showImageForEmptyUri(com.dianxinos.a.a.c.v2_default_icon).showImageOnFail(com.dianxinos.a.a.c.v2_default_icon).bitmapConfig(Bitmap.Config.RGB_565).decodingOptions(new BitmapFactory.Options()).imageScaleType(ImageScaleType.IN_SAMPLE_INT).displayer(new RoundedBitmapDisplayer(ap.a(a, 9.0F))).cacheInMemory(false).cacheOnDisk(true).build();
  }
  
  private float a(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat == 0.0F) {
      f1 = 4.5F;
    }
    return f1;
  }
  
  private float a(NativeAd.Rating paramRating)
  {
    if (paramRating == null) {
      return 4.5F;
    }
    return (float)paramRating.getValue();
  }
  
  private View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(a).inflate(e.duapps_ad_offer_wall_item_1, paramViewGroup, false);
      paramViewGroup = new i();
      a = ((ImageView)paramView.findViewById(d.duapps_ad_toolbox_item_icon_iv));
      b = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_title_tv));
      e = ((RatingBar)paramView.findViewById(d.duapps_ad_toolbox_item_ratingbar));
      c = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_desc_tv));
      d = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_action_tv));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      Object localObject = b.get(paramInt);
      if ((localObject instanceof NativeAd))
      {
        localObject = (NativeAd)localObject;
        ((NativeAd)localObject).unregisterView();
        b.setText(((NativeAd)localObject).getAdTitle());
        e.setRating(a(((NativeAd)localObject).getAdStarRating()));
        c.setMaxLines(2);
        c.setText(((NativeAd)localObject).getAdBody());
        d.setText(((NativeAd)localObject).getAdCallToAction());
        e.displayImage(((NativeAd)localObject).getAdIcon().getUrl(), a, g);
        ((NativeAd)localObject).registerViewForInteraction(paramView);
        h = new com.duapps.ad.offerwall.a.j(a, paramInt, c);
        ((NativeAd)localObject).setAdListener(h);
      }
      return paramView;
      paramViewGroup = (i)paramView.getTag();
    }
  }
  
  private View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(a).inflate(e.duapps_ad_offer_wall_item_1, paramViewGroup, false);
      paramViewGroup = new i();
      a = ((ImageView)paramView.findViewById(d.duapps_ad_toolbox_item_icon_iv));
      b = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_title_tv));
      e = ((RatingBar)paramView.findViewById(d.duapps_ad_toolbox_item_ratingbar));
      c = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_desc_tv));
      d = ((TextView)paramView.findViewById(d.duapps_ad_toolbox_item_action_tv));
      f = ((ImageView)paramView.findViewById(d.duapps_ad_toolbox_item_label));
      paramView.setTag(paramViewGroup);
      localObject = b.get(paramInt);
      if ((localObject instanceof AdData))
      {
        localObject = (AdData)localObject;
        f = paramInt;
        b.setText(b);
        e.setRating(a(k));
        c.setText(e);
        c.setMaxLines(2);
        e.displayImage(g, a, g);
        if (1 != r) {
          break label274;
        }
        f.setImageResource(com.dianxinos.a.a.c.v2_hot);
      }
    }
    for (;;)
    {
      d.setTag(localObject);
      d.setOnClickListener(new h(this));
      return paramView;
      paramViewGroup = (i)paramView.getTag();
      break;
      label274:
      if (2 == r) {
        f.setImageResource(com.dianxinos.a.a.c.v2_new);
      } else {
        f.setImageResource(0);
      }
    }
  }
  
  public void a()
  {
    d.clear();
    b.clear();
  }
  
  public void a(List<NativeAd> paramList)
  {
    b.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public void b(List<AdData> paramList)
  {
    b.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public Object getItem(int paramInt)
  {
    return b.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((getItem(paramInt) instanceof AdData)) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    int j = d.size();
    Object localObject = b.get(paramInt);
    if (j == paramInt)
    {
      if (!(localObject instanceof AdData)) {
        break label136;
      }
      f = paramInt;
      u.a(a, new p((AdData)localObject), paramInt);
      l.c("OfferWallAdapter", "Has reported at position: " + paramInt + " ,title: " + b);
    }
    for (;;)
    {
      d.append(paramInt, true);
      if (i != 0) {
        break;
      }
      return b(paramInt, paramView, paramViewGroup);
      label136:
      if ((localObject instanceof NativeAd))
      {
        u.a(a, paramInt, c);
        l.c("OfferWallAdapter", "Has reported at position: " + paramInt + " ,title: " + ((NativeAd)localObject).getAdTitle());
      }
    }
    if (i == 1) {
      return a(paramInt, paramView, paramViewGroup);
    }
    return null;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */