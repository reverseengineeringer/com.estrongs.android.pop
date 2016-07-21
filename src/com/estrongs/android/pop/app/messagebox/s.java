package com.estrongs.android.pop.app.messagebox;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.l;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

class s
  extends BaseAdapter
{
  private LayoutInflater b;
  
  public s(MessageBoxActivity paramMessageBoxActivity)
  {
    b = paramMessageBoxActivity.getLayoutInflater();
  }
  
  public int getCount()
  {
    return MessageBoxActivity.e(a).size();
  }
  
  public Object getItem(int paramInt)
  {
    return MessageBoxActivity.e(a).get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int m = 4;
    ah localah = (ah)MessageBoxActivity.e(a).get(paramInt);
    Object localObject;
    int i;
    label247:
    int j;
    if (paramView == null)
    {
      paramView = new v(null);
      g = paramInt;
      View localView = b.inflate(2130903329, paramViewGroup, false);
      paramViewGroup = b.inflate(2130903330, paramViewGroup, false);
      localObject = new f(a, MessageBoxActivity.f(a), localView, paramViewGroup, new t(this, localView, paramView));
      a = ((ImageView)localView.findViewById(2131625187));
      b = ((ImageView)localView.findViewById(2131625190));
      c = ((TextView)localView.findViewById(2131625189));
      d = ((TextView)localView.findViewById(2131625188));
      e = ((ImageView)localView.findViewById(2131625191));
      f = ((LinearLayout)paramViewGroup.findViewById(2131625192));
      h = localView;
      ((View)localObject).setTag(paramView);
      MessageBoxActivity.h(a).add((f)localObject);
      paramViewGroup = paramView;
      paramView = (View)localObject;
      f.setOnClickListener(new u(this, localah));
      if (TextUtils.isEmpty(d)) {
        break label716;
      }
      i = 1;
      if (i != 0) {
        c.setText(d);
      }
      j = (int)c.getPaint().measureText(d) + g.a(a, 13.0F);
      int k = cu.e(a) - g.a(a, 26.0F);
      h).getLayoutParams().width = cu.e(a);
      localObject = c;
      if (j <= k) {
        break label722;
      }
      j = k;
      label348:
      ((TextView)localObject).setWidth(j);
      localObject = c;
      if (i == 0) {
        break label725;
      }
      i = 0;
      label369:
      ((TextView)localObject).setVisibility(i);
      localObject = MessageBoxActivity.a(a, h);
      l.e("text", " time: " + (String)localObject);
      d.setText(MessageBoxActivity.a(a, h));
      localObject = d;
      i = m;
      if (j) {
        i = 0;
      }
      ((TextView)localObject).setVisibility(i);
      if (g != 2) {
        break label731;
      }
      b.setVisibility(8);
      e.setVisibility(0);
      label488:
      localObject = ai.b(e);
      i = g.a(a, 2.0F);
      if (localObject == null) {
        break label751;
      }
      localObject = new BitmapDrawable(a.getResources(), MessageBoxActivity.a((Bitmap)localObject, i));
      label536:
      i = ((Drawable)localObject).getIntrinsicHeight();
      j = ((Drawable)localObject).getIntrinsicWidth();
      a.getLayoutParams().height = ((int)(k * 1.0F / j * i));
      a.setImageDrawable((Drawable)localObject);
      i = a.getResources().getDimensionPixelSize(2131165259);
      j = a.getResources().getDimensionPixelSize(2131165255);
      if (paramInt != MessageBoxActivity.e(a).size() - 1) {
        break label819;
      }
      h.setPadding(i, j, i, j);
    }
    for (;;)
    {
      try
      {
        paramViewGroup = new JSONObject();
        paramViewGroup.put("msgID", k);
        c.a(a).a("mbx_bns", paramViewGroup);
        c.a(a).a("mbx", "mbx_pub", paramViewGroup);
        return paramView;
      }
      catch (JSONException paramViewGroup)
      {
        label716:
        label722:
        label725:
        label731:
        label751:
        label819:
        paramViewGroup.printStackTrace();
      }
      paramViewGroup = (v)paramView.getTag();
      g = paramInt;
      break;
      i = 0;
      break label247;
      break label348;
      i = 4;
      break label369;
      b.setVisibility(0);
      e.setVisibility(8);
      break label488;
      localObject = ((BitmapDrawable)a.getResources().getDrawable(MessageBoxActivity.a()[((a - 1) % MessageBoxActivity.a().length)])).getBitmap();
      localObject = new BitmapDrawable(a.getResources(), MessageBoxActivity.a((Bitmap)localObject, i));
      ai.a(e);
      break label536;
      h.setPadding(i, j, i, 0);
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */