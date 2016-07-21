package com.estrongs.android.pop.app.messagebox;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.an;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class MessageBoxActivity
  extends ESActivity
  implements b
{
  private static final int[] a = { 2130838157, 2130838153, 2130838152 };
  private w b;
  private List<ah> c = new ArrayList();
  private List<f> d = new ArrayList();
  private DisableScrollListView e;
  private ProgressDialog f;
  private s g;
  private Handler h;
  private boolean i = false;
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_4444);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight() * 2);
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-1);
    localCanvas.drawRoundRect(localRectF, paramInt, paramInt, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRectF, localPaint);
    return localBitmap;
  }
  
  private void a(int paramInt) {}
  
  public static void a(Activity paramActivity)
  {
    paramActivity.startActivity(new Intent(paramActivity, MessageBoxActivity.class));
    try
    {
      c.a(paramActivity).a("hpmessage_click");
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    if ((c == null) || (paramInt > c.size() - 1)) {
      return;
    }
    ah localah = (ah)c.get(paramInt);
    int j;
    if (g == 2)
    {
      j = 1;
      if (System.currentTimeMillis() - c.longValue() <= 0L) {
        break label221;
      }
      paramInt = 1;
      label68:
      if (paramInt == 0) {
        break label226;
      }
      j = 1;
      label74:
      if (g != 2)
      {
        if ((paramView.getTag() instanceof v))
        {
          paramView = (v)paramView.getTag();
          b.setVisibility(8);
          e.setVisibility(0);
        }
        g = 2;
        b.a(localah);
      }
      try
      {
        paramView = ag.a(this, localah);
        if (paramView != null) {
          break label231;
        }
        throw new NullPointerException("intent is null when generate Intent");
      }
      catch (Exception paramView)
      {
        if (i != 2) {
          break label258;
        }
      }
      Toast.makeText(this, 2131231740, 0).show();
    }
    for (;;)
    {
      paramView.printStackTrace();
      for (;;)
      {
        try
        {
          paramView = new JSONObject();
          paramView.put("msgID", k);
          c.a(this).a("mbx_bnc", paramView);
          return;
        }
        catch (JSONException paramView)
        {
          paramView.printStackTrace();
          return;
        }
        j = 0;
        break;
        label221:
        paramInt = 0;
        break label68;
        label226:
        j = 0;
        break label74;
        label231:
        if (a == 4) {
          startActivityForResult(paramView, 10);
        } else {
          startActivity(paramView);
        }
      }
      label258:
      if (i == 1) {
        Toast.makeText(this, 2131231739, 0).show();
      }
    }
  }
  
  private void a(ah paramah)
  {
    d();
    b.b(paramah);
    c.remove(paramah);
    g.notifyDataSetChanged();
    if (c.size() <= 0)
    {
      paramah = ((ViewStub)findViewById(2131625180)).inflate();
      e.setEmptyView(paramah);
    }
  }
  
  private static String b(Context paramContext, long paramLong)
  {
    String[] arrayOfString = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(paramLong)).split("-");
    Object localObject = new int[3];
    int j = 0;
    while (j < arrayOfString.length)
    {
      localObject[j] = Integer.parseInt(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime()).split("-");
    int[] arrayOfInt = new int[3];
    j = 0;
    while (j < arrayOfString.length)
    {
      arrayOfInt[j] = Integer.parseInt(arrayOfString[j]);
      j += 1;
    }
    if ((arrayOfInt[0] - localObject[0] < 0) || (arrayOfInt[1] - localObject[1] < 0) || (arrayOfInt[2] - localObject[2] < 0)) {
      return paramContext.getString(2131231300);
    }
    if (arrayOfInt[0] - localObject[0] > 0) {
      return new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault()).format(new Date(paramLong));
    }
    if (arrayOfInt[1] - localObject[1] == 0)
    {
      if (arrayOfInt[2] - localObject[2] == 0)
      {
        localObject = new SimpleDateFormat("KK:mm a", Locale.getDefault()).format(new Date(paramLong));
        return paramContext.getString(2131231301) + " " + (String)localObject;
      }
      if (arrayOfInt[2] - localObject[2] == 1) {
        return paramContext.getString(2131231302);
      }
      return new SimpleDateFormat("MM/dd", Locale.getDefault()).format(new Date(paramLong));
    }
    return new SimpleDateFormat("MM/dd", Locale.getDefault()).format(new Date(paramLong));
  }
  
  private void b()
  {
    b = w.a(getApplicationContext());
  }
  
  private void c()
  {
    ((ImageView)findViewById(2131625176)).setOnClickListener(new p(this));
    g = new s(this);
    h = new a(this);
    e = ((DisableScrollListView)findViewById(2131625179));
    e.setAdapter(g);
    e.setOnScrollListener(new q(this));
  }
  
  private void d()
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      ((f)localIterator.next()).a(true);
    }
  }
  
  private void e()
  {
    h.obtainMessage(1).sendToTarget();
    e.a().b(new r(this));
  }
  
  private void f()
  {
    z.a(this).a(1);
  }
  
  private void g()
  {
    if (f == null)
    {
      f = new ProgressDialog(this);
      f.setMessage(getString(2131232182));
    }
    if (!isFinishing()) {
      f.show();
    }
  }
  
  private void h()
  {
    if (f != null) {
      f.dismiss();
    }
  }
  
  public void a(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      g();
      return;
      h();
      paramMessage = (List)obj;
      if ((paramMessage != null) && (paramMessage.size() > 0))
      {
        c.clear();
        c.addAll(paramMessage);
        g.notifyDataSetChanged();
        return;
      }
    } while (e.getEmptyView() != null);
    paramMessage = ((ViewStub)findViewById(2131625180)).inflate();
    ((TextView)paramMessage.findViewById(2131625182)).setText(getText(2131231738));
    e.setEmptyView(paramMessage);
  }
  
  public void finish()
  {
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    g.notifyDataSetChanged();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903326);
    an.a(this);
    b();
    c();
  }
  
  protected void onDestroy()
  {
    h();
    super.onDestroy();
    ai.a();
  }
  
  protected void onResume()
  {
    super.onResume();
    e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.MessageBoxActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */