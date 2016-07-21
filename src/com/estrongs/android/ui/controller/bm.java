package com.estrongs.android.ui.controller;

import android.content.res.ColorStateList;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.controller.widget.ESFloatingActionButton;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.a.a;
import java.lang.reflect.Array;

public class bm
{
  private FileExplorerActivity a;
  private ESFloatingActionButton b;
  private boolean c = false;
  
  public bm(FileExplorerActivity paramFileExplorerActivity, ESFloatingActionButton paramESFloatingActionButton)
  {
    a = paramFileExplorerActivity;
    b = paramESFloatingActionButton;
  }
  
  public void a(a parama, at paramat, boolean paramBoolean)
  {
    if (!c)
    {
      ColorStateList localColorStateList;
      if (paramBoolean) {
        localColorStateList = new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { paramat.c(2131558602) });
      }
      for (paramat = new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { paramat.c(2131558604) });; paramat = new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { paramat.c(2131558605) }))
      {
        b.setNormalColor(localColorStateList);
        b.setWarnColor(paramat);
        b.setWarnPercent(0.7F);
        b.setTextSize(14.0F);
        b.setNeedRotateWhenWarn(true);
        b.a(parama.b(), 30.0F);
        new bn(this).start();
        c = true;
        return;
        localColorStateList = new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { paramat.c(2131558603) });
      }
    }
    b.d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */