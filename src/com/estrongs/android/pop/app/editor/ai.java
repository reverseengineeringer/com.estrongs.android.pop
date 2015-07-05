package com.estrongs.android.pop.app.editor;

import android.util.Log;
import android.widget.SeekBar;

class ai
  extends Thread
{
  public boolean a = false;
  private Object c = new Object();
  
  public ai(PopNoteEditor paramPopNoteEditor) {}
  
  public void a()
  {
    a = true;
    synchronized (c)
    {
      c.notify();
      return;
    }
  }
  
  public void b()
  {
    a = false;
  }
  
  public void run()
  {
    for (;;)
    {
      if (!PopNoteEditor.K(b))
      {
        if ((PopNoteEditor.L(b)) || (PopNoteEditor.M(b))) {}
        int i;
        synchronized (c)
        {
          try
          {
            c.wait(100L);
            if (!a) {
              break label112;
            }
            i = PopNoteEditor.N(b);
            a = false;
            if (i < 0) {
              Log.e(PopNoteEditor.c(), "ProgressThread invalid progress");
            }
          }
          catch (InterruptedException localInterruptedException1)
          {
            for (;;)
            {
              localInterruptedException1.printStackTrace();
            }
          }
        }
        PopNoteEditor.u(b).setProgress(i);
        continue;
        try
        {
          label112:
          synchronized (c)
          {
            c.wait();
          }
        }
        catch (InterruptedException localInterruptedException2)
        {
          for (;;)
          {
            localInterruptedException2.printStackTrace();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */