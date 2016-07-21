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
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.d.h;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.theme.at;

public class PopMultiWindowGrid
  extends LinearLayout
{
  private Context a;
  private ImageView b;
  private TextView c;
  private ImageView d;
  private Handler e;
  private ImageView f;
  private int g;
  
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
    View localView = k.a(a).inflate(2130903246, null);
    addView(localView);
    b = ((ImageView)localView.findViewById(2131624955));
    c = ((TextView)localView.findViewById(2131624958));
    f = ((ImageView)localView.findViewById(2131624957));
    if (at.a(a).p()) {}
    d = ((ImageView)localView.findViewById(2131624956));
    b.setFocusable(true);
    b.setOnFocusChangeListener(new bz(this));
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
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    paramInt = localFileExplorerActivity.au().c();
    if (g >= paramInt) {
      return;
    }
    h localh = localFileExplorerActivity.au().c(g);
    if (localFileExplorerActivity != null)
    {
      Bitmap localBitmap = localFileExplorerActivity.i(g);
      if (localBitmap != null) {
        b.setImageBitmap(localBitmap);
      }
    }
    c.setText(localh.b(a));
    paramInt = g.a(a, 6.0F);
    if (g != localFileExplorerActivity.au().a())
    {
      b.setPadding(paramInt, paramInt, paramInt, paramInt);
      f.setVisibility(8);
    }
    for (;;)
    {
      b.setOnClickListener(new ca(this));
      b.setOnTouchListener(new cb(this));
      if ((localFileExplorerActivity.au().c() <= 1) || (localh.a().equals("#home_page#"))) {
        break;
      }
      d.setVisibility(0);
      d.setOnClickListener(new cc(this));
      return;
      b.setPadding(paramInt, paramInt, paramInt, paramInt);
      f.setVisibility(0);
    }
    d.setVisibility(4);
  }
  
  public void setHandler(Handler paramHandler)
  {
    e = paramHandler;
  }
  
  public void setPosition(int paramInt)
  {
    g = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.PopMultiWindowGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */