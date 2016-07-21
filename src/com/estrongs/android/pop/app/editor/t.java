package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View.OnTouchListener;
import com.estrongs.android.pop.app.a;

class t
  extends a
{
  t(PopNoteEditor paramPopNoteEditor, View.OnTouchListener paramOnTouchListener)
  {
    super(paramOnTouchListener);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void b()
  {
    PopNoteEditor.b(a, false);
  }
  
  public void c()
  {
    PopNoteEditor.b(a, true);
  }
  
  public boolean d()
  {
    return ia).getResources().getConfiguration().orientation == 1;
  }
  
  public boolean e()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */