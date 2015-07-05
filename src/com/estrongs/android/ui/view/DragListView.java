package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.AbsDragListView;

public class DragListView
  extends AbsDragListView
{
  private PopAudioPlayer c;
  
  public DragListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c = ((PopAudioPlayer)paramContext);
  }
  
  public void a()
  {
    super.a();
    ((ac)getAdapter()).b(-1);
    ((ac)getAdapter()).notifyDataSetChanged();
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    b(paramInt);
    a = b;
    ((ac)getAdapter()).b(a);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c.b(paramInt1, paramInt2);
  }
  
  public void a(Bitmap paramBitmap, int paramInt)
  {
    super.a(paramBitmap, paramInt);
    ((ac)getAdapter()).b(b());
    ((ac)getAdapter()).notifyDataSetChanged();
  }
  
  public int c()
  {
    return 2131361948;
  }
  
  public boolean d()
  {
    return !((ac)getAdapter()).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.DragListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */