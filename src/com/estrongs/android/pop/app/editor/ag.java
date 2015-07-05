package com.estrongs.android.pop.app.editor;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;

class ag
  implements View.OnTouchListener
{
  ag(PopNoteEditor paramPopNoteEditor) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 0)) {
      PopNoteEditor.b(a).a();
    }
    if (PopNoteEditor.p(a).getVisibility() == 0) {
      PopNoteEditor.q(a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */