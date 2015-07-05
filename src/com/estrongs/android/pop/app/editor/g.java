package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import android.widget.LinearLayout;

class g
  extends Handler
{
  g(PopNoteEditor paramPopNoteEditor) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = 0;
    switch (what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    case 2: 
      paramMessage = (am)obj;
      PopNoteEditor.a(a).setText(a);
      return;
    case 1: 
      paramMessage = (am)obj;
      PopNoteEditor.a(a).setText(a);
      PopNoteEditor.b(a).scrollTo(0, b);
      return;
    case 0: 
      paramMessage = (am)obj;
      i = b;
      PopNoteEditor.b(a).scrollTo(0, i);
      PopNoteEditor.a(a).setText(a);
      PopNoteEditor.b(a).post(new h(this, i));
      return;
    case 3: 
      paramMessage = (am)obj;
      PopNoteEditor.c(a).setText(a);
      PopNoteEditor.c(a).requestFocus();
      if ((a == null) || (a.length() <= 10))
      {
        if (a != null) {
          i = a.length();
        }
        PopNoteEditor.a(a, i);
      }
      i = b;
      PopNoteEditor.d(a).post(new i(this, i));
      return;
    case 4: 
      paramMessage = (Boolean)obj;
      PopNoteEditor.a(a, paramMessage.booleanValue());
      return;
    case 5: 
      try
      {
        a.showDialog(arg1);
        return;
      }
      catch (Exception paramMessage)
      {
        return;
      }
    case 6: 
      if (PopNoteEditor.e(a) == 0)
      {
        PopNoteEditor.f(a).setVisibility(0);
        PopNoteEditor.b(a, 1);
      }
      PopNoteEditor.g(a);
      return;
    }
    PopNoteEditor.f(a).setVisibility(4);
    PopNoteEditor.b(a, 0);
    PopNoteEditor.h(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */