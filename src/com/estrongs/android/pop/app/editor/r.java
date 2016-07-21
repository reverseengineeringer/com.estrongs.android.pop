package com.estrongs.android.pop.app.editor;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.EditText;

class r
  implements View.OnTouchListener
{
  r(PopNoteEditor paramPopNoteEditor) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getY() > PopNoteEditor.c(a).getHeight())
    {
      paramMotionEvent.setLocation(PopNoteEditor.d(a).getWidth(), paramMotionEvent.getY());
      PopNoteEditor.c(a).dispatchTouchEvent(paramMotionEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */