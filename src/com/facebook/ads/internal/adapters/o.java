package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdView.Type;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class o
  extends b
{
  private final p b;
  private NativeAdView.Type c;
  private boolean d;
  private boolean e;
  private boolean f;
  private View g;
  private List<View> h;
  
  public o(Context paramContext, c paramc, p paramp)
  {
    super(paramContext, paramc);
    b = paramp;
  }
  
  private String b(View paramView)
  {
    try
    {
      paramView = c(paramView).toString();
      return paramView;
    }
    catch (JSONException paramView) {}
    return "Json exception";
  }
  
  private JSONObject c(View paramView)
  {
    int i = 0;
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.putOpt("id", Integer.valueOf(paramView.getId()));
    localJSONObject.putOpt("class", paramView.getClass());
    localJSONObject.putOpt("origin", String.format("{x:%d, y:%d}", new Object[] { Integer.valueOf(paramView.getTop()), Integer.valueOf(paramView.getLeft()) }));
    localJSONObject.putOpt("size", String.format("{h:%d, w:%d}", new Object[] { Integer.valueOf(paramView.getHeight()), Integer.valueOf(paramView.getWidth()) }));
    boolean bool;
    Object localObject;
    if (h == null)
    {
      bool = false;
      localJSONObject.putOpt("clickable", Boolean.valueOf(bool));
      localObject = "unknown";
      if (!(paramView instanceof TextView)) {
        break label223;
      }
      localObject = "text";
    }
    for (;;)
    {
      localJSONObject.putOpt("type", localObject);
      if (!(paramView instanceof ViewGroup)) {
        break label289;
      }
      paramView = (ViewGroup)paramView;
      localObject = new JSONArray();
      while (i < paramView.getChildCount())
      {
        ((JSONArray)localObject).put(c(paramView.getChildAt(i)));
        i += 1;
      }
      bool = h.contains(paramView);
      break;
      label223:
      if ((paramView instanceof Button)) {
        localObject = "button";
      } else if ((paramView instanceof ImageView)) {
        localObject = "image";
      } else if ((paramView instanceof MediaView)) {
        localObject = "mediaview";
      } else if ((paramView instanceof ViewGroup)) {
        localObject = "viewgroup";
      }
    }
    localJSONObject.putOpt("list", localObject);
    label289:
    return localJSONObject;
  }
  
  private String d(View paramView)
  {
    if ((paramView.getWidth() <= 0) || (paramView.getHeight() <= 0)) {
      return "";
    }
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_8888);
      localBitmap.setDensity(getResourcesgetDisplayMetricsdensityDpi);
      paramView.draw(new Canvas(localBitmap));
      paramView = new ByteArrayOutputStream();
      localBitmap.compress(Bitmap.CompressFormat.JPEG, b.d(), paramView);
      paramView = Base64.encodeToString(paramView.toByteArray(), 0);
      return paramView;
    }
    catch (Exception paramView) {}
    return "";
  }
  
  public void a(View paramView)
  {
    g = paramView;
  }
  
  public void a(NativeAdView.Type paramType)
  {
    c = paramType;
  }
  
  public void a(List<View> paramList)
  {
    h = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  protected void b()
  {
    if (b == null) {
      return;
    }
    HashMap localHashMap = new HashMap();
    if (a != null)
    {
      localHashMap.put("mil", Boolean.valueOf(a.a()));
      localHashMap.put("eil", Boolean.valueOf(a.b()));
      localHashMap.put("eil_source", a.c());
    }
    if (c != null) {
      localHashMap.put("nti", String.valueOf(c.getValue()));
    }
    if (d) {
      localHashMap.put("nhs", String.valueOf(d));
    }
    if (e) {
      localHashMap.put("nmv", String.valueOf(e));
    }
    if (f) {
      localHashMap.put("nmvap", String.valueOf(f));
    }
    if ((g != null) && (b.b())) {
      localHashMap.put("view", b(g));
    }
    if ((g != null) && (b.c())) {
      localHashMap.put("snapshot", d(g));
    }
    b.a(localHashMap);
  }
  
  public void b(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void c(boolean paramBoolean)
  {
    f = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */