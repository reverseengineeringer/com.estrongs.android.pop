package com.estrongs.android.ui.a;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class d
  extends Animation
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final boolean f;
  private Camera g;
  private final boolean h;
  
  public d(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramFloat1;
    b = paramFloat2;
    c = paramFloat3;
    d = paramFloat4;
    e = paramFloat5;
    f = paramBoolean1;
    h = paramBoolean2;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = a;
    f1 += (b - f1) * paramFloat;
    float f2 = c;
    float f3 = d;
    Camera localCamera = g;
    paramTransformation = paramTransformation.getMatrix();
    localCamera.save();
    if (f)
    {
      localCamera.translate(0.0F, 0.0F, e * paramFloat);
      if (!h) {
        break label127;
      }
      localCamera.rotateX(f1);
    }
    for (;;)
    {
      localCamera.getMatrix(paramTransformation);
      localCamera.restore();
      paramTransformation.preTranslate(-f2, -f3);
      paramTransformation.postTranslate(f2, f3);
      return;
      localCamera.translate(0.0F, 0.0F, e * (1.0F - paramFloat));
      break;
      label127:
      localCamera.rotateY(f1);
    }
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    g = new Camera();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */