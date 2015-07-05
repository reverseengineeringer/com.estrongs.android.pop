package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.d.d;
import com.estrongs.android.ui.d.e;

public class PopMultiWindowGrid
  extends LinearLayout
{
  private Context a;
  private ImageView b;
  private TextView c;
  private ImageView d;
  private Handler e;
  private int f;
  
  public PopMultiWindowGrid(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
    a();
  }
  
  public PopMultiWindowGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    a();
  }
  
  @SuppressLint({"NewApi"})
  public PopMultiWindowGrid(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = paramContext;
    a();
  }
  
  private void a()
  {
    View localView = g.a(a).inflate(2130903138, null);
    addView(localView);
    b = ((ImageView)localView.findViewById(2131362348));
    c = ((TextView)localView.findViewById(2131362350));
    d = ((ImageView)localView.findViewById(2131362349));
    b.setFocusable(true);
    b.setOnFocusChangeListener(new bq(this));
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Message localMessage = new Message();
    what = paramInt1;
    arg1 = paramInt2;
    if (e != null) {
      e.sendMessage(localMessage);
    }
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(Handler paramHandler)
  {
    e = paramHandler;
  }
  
  public void b(int paramInt)
  {
    Object localObject = FileExplorerActivity.J();
    paramInt = e.c();
    if (f >= paramInt) {
      return;
    }
    d locald = e.c(f);
    if (localObject != null)
    {
      localObject = ((FileExplorerActivity)localObject).i(f);
      if (localObject != null) {
        b.setImageBitmap((Bitmap)localObject);
      }
    }
    c.setText(locald.b(a));
    paramInt = a.a(a, 4.0F);
    if (f != e.a())
    {
      b.setBackgroundResource(2130837568);
      b.setPadding(paramInt, paramInt, paramInt, paramInt);
    }
    for (;;)
    {
      b.setOnClickListener(new br(this));
      b.setOnTouchListener(new bs(this));
      if (e.c() <= 1) {
        break;
      }
      d.setVisibility(0);
      d.setOnClickListener(new bt(this));
      return;
      b.setBackgroundResource(2130837863);
      b.setPadding(paramInt, paramInt, paramInt, paramInt);
    }
    d.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.PopMultiWindowGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */