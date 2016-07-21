package com.estrongs.android.ui.guesture;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.gesture.Gesture;
import android.gesture.GestureStroke;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.estrongs.android.util.ap;
import java.util.ArrayList;

public class d
{
  public static Bitmap a(Gesture paramGesture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Object localObject2 = new Paint();
      ((Paint)localObject2).setAntiAlias(true);
      ((Paint)localObject2).setDither(true);
      ((Paint)localObject2).setColor(paramInt4);
      ((Paint)localObject2).setStyle(Paint.Style.STROKE);
      ((Paint)localObject2).setStrokeJoin(Paint.Join.ROUND);
      ((Paint)localObject2).setStrokeCap(Paint.Cap.ROUND);
      ((Paint)localObject2).setStrokeWidth(8.0F);
      Path localPath = paramGesture.toPath();
      Object localObject1 = new RectF();
      localPath.computeBounds((RectF)localObject1, true);
      float f2 = (paramInt1 - paramInt3 * 2) / ((RectF)localObject1).width();
      float f3 = (paramInt2 - paramInt3 * 2) / ((RectF)localObject1).height();
      float f1 = f2;
      if (f2 > f3) {
        f1 = f3;
      }
      ((Paint)localObject2).setStrokeWidth(8.0F / f1);
      localPath.offset(-left + (paramInt1 - ((RectF)localObject1).width() * f1) / 2.0F, -top + (paramInt2 - ((RectF)localObject1).height() * f1) / 2.0F);
      localCanvas.translate(paramInt3, paramInt3);
      localCanvas.scale(f1, f1);
      localCanvas.drawPath(localPath, (Paint)localObject2);
      localObject2 = (GestureStroke)paramGesture.getStrokes().get(0);
      localObject2 = new PointF(points[0], points[1]);
      ((PointF)localObject2).offset(-left + (paramInt1 - ((RectF)localObject1).width() * f1) / 2.0F, -top + (paramInt2 - ((RectF)localObject1).height() * f1) / 2.0F);
      localObject1 = new Paint();
      ((Paint)localObject1).setColor(a.a);
      ((Paint)localObject1).setAntiAlias(true);
      ((Paint)localObject1).setDither(true);
      ((Paint)localObject1).setStyle(Paint.Style.FILL);
      localCanvas.drawCircle(x, y, 8.0F / f1, (Paint)localObject1);
      return localBitmap;
    }
    catch (Exception localException) {}
    return paramGesture.toBitmap(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static String a(Context paramContext, String paramString)
  {
    Object localObject;
    if (paramString.startsWith("open_folder"))
    {
      String str = paramString.substring("open_folder".length());
      localObject = ap.d(str);
      paramString = (String)localObject;
      if (localObject == null)
      {
        paramString = (String)localObject;
        if (ap.bo(str)) {
          paramString = paramContext.getString(2131231650);
        }
      }
      return paramContext.getString(2131231538, new Object[] { paramString });
    }
    if (paramString.startsWith("open_window")) {
      return paramContext.getString(2131231539, new Object[] { b(paramContext, paramString) });
    }
    if (paramString.startsWith("start_app"))
    {
      paramString = paramString.substring("start_app".length()).split("#");
      localObject = paramContext.getPackageManager();
      try
      {
        paramString = paramContext.getString(2131231546, new Object[] { ((PackageManager)localObject).getActivityInfo(new ComponentName(paramString[0], paramString[1]), 1).loadLabel((PackageManager)localObject).toString() });
        return paramString;
      }
      catch (PackageManager.NameNotFoundException paramString)
      {
        paramString.printStackTrace();
        return paramContext.getString(2131231030);
      }
    }
    if ("back".equals(paramString)) {
      return paramContext.getString(2131230827);
    }
    if ("close_current".equals(paramString)) {
      return paramContext.getString(2131230835);
    }
    if ("refresh".equals(paramString)) {
      return paramContext.getString(2131230880);
    }
    if ("open_lib_pic".equals(paramString)) {
      return paramContext.getString(2131230868) + " " + paramContext.getString(2131231138);
    }
    if ("open_lib_music".equals(paramString)) {
      return paramContext.getString(2131230868) + " " + paramContext.getString(2131231136);
    }
    if ("open_lib_video".equals(paramString)) {
      return paramContext.getString(2131230868) + " " + paramContext.getString(2131231135);
    }
    if ("open_lib_text".equals(paramString)) {
      return paramContext.getString(2131230868) + " " + paramContext.getString(2131231130);
    }
    if ("show_navi".equals(paramString)) {
      return paramContext.getString(2131230868) + " " + paramContext.getString(2131231651);
    }
    if ("exit".equals(paramString)) {
      return paramContext.getString(2131230851);
    }
    if ("open_settings".equals(paramString)) {
      return paramContext.getString(2131231617);
    }
    return null;
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    String str;
    do
    {
      return null;
      str = paramString;
      if (paramString.startsWith("open_window")) {
        str = paramString.substring("open_window".length());
      }
      if ("#home_page#".startsWith(str)) {
        return paramContext.getString(2131231657);
      }
      if ("#home#".startsWith(str)) {
        return paramContext.getString(2131231656);
      }
      if ("open_lib_pic".equals(str)) {
        return paramContext.getString(2131231138);
      }
      if ("open_lib_music".equals(str)) {
        return paramContext.getString(2131231136);
      }
      if ("open_lib_video".equals(str)) {
        return paramContext.getString(2131231135);
      }
      if ("open_lib_text".equals(str)) {
        return paramContext.getString(2131231130);
      }
      if ("smb://".equals(str)) {
        return paramContext.getString(2131231658);
      }
      if ("net://".equals(str)) {
        return paramContext.getString(2131231648);
      }
      if ("pcs://".equals(str)) {
        return paramContext.getString(2131231137);
      }
      if ("ftp://".equals(str)) {
        return paramContext.getString(2131231652);
      }
      if ("bt://".equals(str)) {
        return paramContext.getString(2131231649);
      }
      if ("app://user".equals(str)) {
        return paramContext.getString(2131231129);
      }
      if ("download://".equals(str)) {
        return paramContext.getString(2131230994);
      }
      if ("task_manager".equals(str)) {
        return paramContext.getString(2131231471);
      }
      if ("du://".equals(str)) {
        return paramContext.getString(2131231365);
      }
      if ("remote://".equals(str)) {
        return paramContext.getString(2131231470);
      }
      if ("net_manager".equals(str)) {
        return paramContext.getString(2131231023);
      }
      if ("clipboard".equals(str)) {
        return paramContext.getString(2131231647);
      }
      if ("hide_list".equals(str)) {
        return paramContext.getString(2131231654);
      }
      if ("root_explorer".equals(str)) {
        return paramContext.getString(2131232092);
      }
      if ("recycle://".equals(str)) {
        return paramContext.getString(2131232258);
      }
    } while (!"mynetwork://".equals(str));
    return paramContext.getString(2131231789);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */