package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View.OnTouchListener;
import com.estrongs.android.pop.app.a;

class ae
  extends a
{
  ae(PopNoteEditor paramPopNoteEditor, View.OnTouchListener paramOnTouchListener)
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
    return la).getResources().getConfiguration().orientation == 1;
  }
  
  public boolean e()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */