package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.gesture.Gesture;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.guesture.b;
import com.estrongs.android.ui.guesture.d;
import java.util.List;

public class y
  extends BaseAdapter
{
  private Context a;
  private boolean b = true;
  
  public y(Context paramContext)
  {
    a = paramContext;
    if (!b.d()) {
      b.b();
    }
  }
  
  private Bitmap a(Gesture paramGesture)
  {
    int i = g.a(a, 56.0F);
    return d.a(paramGesture, i, i, g.a(a, 4.0F), 1493211874);
  }
  
  public String a(int paramInt)
  {
    return (String)b.c().get(paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
    notifyDataSetChanged();
  }
  
  public boolean a()
  {
    return b;
  }
  
  public int getCount()
  {
    List localList = b.c();
    if ((localList == null) || (!a())) {
      return 0;
    }
    return localList.size();
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(a).inflate(2130903288, null);
    }
    paramView = a(paramInt);
    Gesture localGesture = b.c(paramView);
    ((ImageView)paramViewGroup.findViewById(2131625061)).setImageBitmap(a(localGesture));
    ((TextView)paramViewGroup.findViewById(2131624135)).setText(d.a(a, paramView));
    ((Button)paramViewGroup.findViewById(2131625062)).setOnClickListener(new z(this, paramInt));
    ((Button)paramViewGroup.findViewById(2131625063)).setOnClickListener(new aa(this, paramInt));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */