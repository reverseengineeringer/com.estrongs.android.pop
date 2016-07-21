package com.estrongs.android.pop.app.editor;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class x
  implements View.OnTouchListener
{
  x(PopNoteEditor paramPopNoteEditor) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 0)) {
      PopNoteEditor.b(a).a();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */