package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.estrongs.android.ui.d.g;

public class AnalysisLoadingView
  extends View
{
  private float mAnimValueScan = 0.0F;
  private ObjectAnimator mAnimaScan;
  private AnimatorSet mAnimaSet;
  private long mAnimateTime = 3000L;
  private BitmapShader mBitmapShader;
  private Matrix mBitmapShaderMatrix;
  private Bitmap mBmpBg;
  private Bitmap mBmpIconEmpty;
  private Bitmap mBmpIconFull;
  private Bitmap mBmpNumberBg;
  private Bitmap mBmpRing;
  private Bitmap mBmpScan;
  private String mCancelTextColor = "#35a4f2";
  private int mCancelTextSize = 2131165270;
  private Point mCenter;
  private d mCustomAnimatoion;
  private int mDefaultHeight = 2131165288;
  private int mDefaultWidth = 2131165279;
  private boolean mIsFull;
  private int mPadding = 2131165328;
  private TextPaint mPaintCancel;
  private Paint mPaintLine;
  private Paint mPaintNumber;
  private Paint mPaintScan;
  private TextPaint mPaintTitle;
  private Rect mRectCancel;
  private RectF mRectTitle;
  private String mTitle;
  private String mTitleTextColor = "#333333";
  private int mTitleTextSize = 2131165262;
  private PorterDuffXfermode mXfermode;
  private e onCancelListener;
  
  public AnalysisLoadingView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  public AnalysisLoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    init();
  }
  
  private int dip2px(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void draw9Png(Canvas paramCanvas, Bitmap paramBitmap, Rect paramRect, Paint paramPaint)
  {
    new NinePatch(paramBitmap, paramBitmap.getNinePatchChunk(), null).draw(paramCanvas, paramRect, paramPaint);
  }
  
  private void drawBg(Canvas paramCanvas)
  {
    Rect localRect = new Rect();
    left = 0;
    top = 0;
    right = getWidth();
    bottom = getHeight();
    draw9Png(paramCanvas, mBmpBg, localRect, null);
  }
  
  private void drawBmpNumber(Canvas paramCanvas)
  {
    int i = paramCanvas.saveLayer(0.0F, 0.0F, getWidth(), getWidth(), null, 31);
    Rect localRect = new Rect();
    left = 0;
    top = 0;
    right = getWidth();
    bottom = getWidth();
    drawBmpRing(paramCanvas);
    mBitmapShaderMatrix.setTranslate(0.0F, getWidth() * mAnimValueScan);
    mBitmapShader.setLocalMatrix(mBitmapShaderMatrix);
    mPaintNumber.setShader(mBitmapShader);
    paramCanvas.drawCircle(mCenter.x, mCenter.y, g.a(getContext(), 75.0F), mPaintNumber);
    mPaintNumber.setXfermode(null);
    paramCanvas.restoreToCount(i);
  }
  
  private void drawBmpRing(Canvas paramCanvas)
  {
    Rect localRect = new Rect();
    left = (mCenter.x - mBmpRing.getWidth() / 2);
    top = (mCenter.y - mBmpRing.getHeight() / 2);
    right = (mCenter.x + mBmpRing.getWidth() / 2);
    bottom = (mCenter.y + mBmpRing.getHeight() / 2);
    paramCanvas.drawBitmap(mBmpRing, null, localRect, null);
  }
  
  private void drawCancelText(Canvas paramCanvas)
  {
    StringBuffer localStringBuffer = new StringBuffer(getResources().getString(2131231265));
    float f1 = (mPaintCancel.descent() - mPaintCancel.ascent()) / 2.0F;
    float f2 = mPaintCancel.descent();
    float f3 = mPaintCancel.measureText(localStringBuffer.toString()) / 2.0F;
    if (mRectCancel == null)
    {
      mRectCancel = new Rect();
      mRectCancel.left = 0;
      mRectCancel.top = getWidth();
      mRectCancel.right = getWidth();
      mRectCancel.bottom = Math.round(mRectCancel.top + getHeight() - getWidth());
    }
    paramCanvas.drawText(localStringBuffer.toString(), mRectCancel.centerX() - f3, f1 - f2 + mRectCancel.centerY(), mPaintCancel);
  }
  
  private void drawLine(Canvas paramCanvas)
  {
    paramCanvas.drawLine(0.0F, mRectCancel.top, getWidth(), mRectCancel.top + 1, mPaintLine);
  }
  
  private void drawScan(Canvas paramCanvas)
  {
    Rect localRect = new Rect();
    left = (mCenter.x - mBmpIconFull.getWidth() / 2);
    top = (mCenter.y - mBmpIconFull.getHeight() / 2);
    right = (mCenter.x + mBmpIconFull.getWidth() / 2);
    bottom = (mCenter.y + mBmpIconFull.getHeight() / 2);
    int i;
    if (mIsFull)
    {
      paramCanvas.drawBitmap(mBmpIconEmpty, null, localRect, null);
      i = paramCanvas.saveLayer(0.0F, 0.0F, getWidth(), getWidth(), null, 31);
      if (!mIsFull) {
        break label287;
      }
      paramCanvas.drawBitmap(mBmpIconFull, null, localRect, null);
    }
    for (;;)
    {
      mPaintScan.setXfermode(mXfermode);
      localRect = new Rect();
      left = (-Math.round(getWidth() * (1.0F - mAnimValueScan)));
      top = 0;
      right = (left + getWidth());
      bottom = getWidth();
      if (mIsFull) {
        paramCanvas.rotate(180.0F, mCenter.x, mCenter.y);
      }
      paramCanvas.drawBitmap(mBmpScan, null, localRect, mPaintScan);
      mPaintScan.setXfermode(null);
      paramCanvas.restoreToCount(i);
      return;
      paramCanvas.drawBitmap(mBmpIconFull, null, localRect, null);
      break;
      label287:
      paramCanvas.drawBitmap(mBmpIconEmpty, null, localRect, null);
    }
  }
  
  private void drawTitleText(Canvas paramCanvas)
  {
    if ((mTitle == null) || (mTitle.length() <= 0)) {
      return;
    }
    StringBuffer localStringBuffer = new StringBuffer(mTitle);
    float f1 = mPaintTitle.descent() - mPaintTitle.ascent();
    float f2 = f1 / 2.0F;
    float f3 = mPaintTitle.descent();
    float f4 = mPaintTitle.measureText(localStringBuffer.toString()) / 2.0F;
    if (mRectTitle == null)
    {
      mRectTitle = new RectF();
      mRectTitle.left = 0.0F;
      mRectTitle.top = 0.0F;
      mRectTitle.right = getWidth();
      mRectTitle.bottom = (f1 + dip2px(mPadding) * 2);
    }
    paramCanvas.drawText(localStringBuffer.toString(), mRectTitle.centerX() - f4, f2 - f3 + mRectTitle.centerY(), mPaintTitle);
  }
  
  private void init()
  {
    mXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
    mBmpBg = BitmapFactory.decodeResource(getResources(), 2130837610);
    mBmpIconFull = BitmapFactory.decodeResource(getResources(), 2130837618);
    mBmpIconEmpty = BitmapFactory.decodeResource(getResources(), 2130837617);
    mBmpScan = BitmapFactory.decodeResource(getResources(), 2130837616);
    mBmpRing = BitmapFactory.decodeResource(getResources(), 2130837615);
    mBmpNumberBg = BitmapFactory.decodeResource(getResources(), 2130837609);
    mPaintScan = new Paint(1);
    mPaintScan.setStyle(Paint.Style.STROKE);
    mPaintScan.setStrokeWidth(0.0F);
    mPaintTitle = new TextPaint(1);
    mPaintTitle.setColor(Color.parseColor(mTitleTextColor));
    mPaintTitle.setTextSize(dip2px(mTitleTextSize));
    mPaintCancel = new TextPaint(1);
    mPaintCancel.setColor(Color.parseColor(mCancelTextColor));
    mPaintCancel.setTextSize(dip2px(mCancelTextSize));
    mPaintCancel.setTypeface(Typeface.DEFAULT_BOLD);
    mPaintLine = new Paint(1);
    mPaintLine.setColor(Color.parseColor("#dedfe0"));
    mPaintNumber = new Paint(1);
    mBitmapShader = new BitmapShader(mBmpNumberBg, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    mBitmapShaderMatrix = new Matrix();
    mBitmapShader.setLocalMatrix(mBitmapShaderMatrix);
    mPaintNumber.setShader(mBitmapShader);
    mAnimaScan = ObjectAnimator.ofFloat(this, "animateScan", new float[] { 0.0F, 1.0F });
    mAnimaScan.setRepeatCount(-1);
    mAnimaScan.setRepeatMode(1);
    mAnimaScan.setInterpolator(new LinearInterpolator());
    mAnimaScan.setDuration(mAnimateTime);
    mAnimaScan.addListener(new c(this));
    mAnimaSet = new AnimatorSet();
    mAnimaSet.playTogether(new Animator[] { mAnimaScan });
    mCustomAnimatoion = new d(this, null);
  }
  
  private boolean isClickCancel(int paramInt1, int paramInt2)
  {
    return mRectCancel.contains(paramInt1, paramInt2);
  }
  
  public float getAnimateScan()
  {
    return mAnimValueScan;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    mCenter = new Point(getWidth() / 2, getWidth() / 2);
    drawBg(paramCanvas);
    drawTitleText(paramCanvas);
    drawCancelText(paramCanvas);
    drawLine(paramCanvas);
    drawBmpNumber(paramCanvas);
    drawScan(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = dip2px(mDefaultWidth);
    int j = dip2px(mDefaultHeight);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(j, paramInt2)));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      if (isClickCancel((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
      {
        mPaintCancel.setColor(-65536);
        invalidate(mRectCancel);
        continue;
        if ((isClickCancel((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (onCancelListener != null)) {
          onCancelListener.a();
        }
        mPaintCancel.setColor(Color.parseColor(mCancelTextColor));
        invalidate(mRectCancel);
      }
    }
  }
  
  public void setAnimateScan(float paramFloat)
  {
    mAnimValueScan = paramFloat;
    postInvalidate();
  }
  
  public void setOnCancelListener(e parame)
  {
    onCancelListener = parame;
  }
  
  public void setTitle(String paramString)
  {
    mTitle = paramString;
  }
  
  public void startAnimate()
  {
    if (Build.VERSION.SDK_INT < 11) {
      if (!mCustomAnimatoion.a()) {}
    }
    while (mAnimaSet.isRunning())
    {
      return;
      mAnimValueScan = 0.0F;
      startAnimation(mCustomAnimatoion);
      return;
    }
    mAnimValueScan = 0.0F;
    mAnimaSet.start();
  }
  
  public void stopAnimate()
  {
    if (Build.VERSION.SDK_INT < 11) {
      if ((mCustomAnimatoion != null) && (mCustomAnimatoion.a())) {
        mCustomAnimatoion.cancel();
      }
    }
    while ((mAnimaSet == null) || (!mAnimaSet.isRunning())) {
      return;
    }
    mAnimaSet.end();
    mAnimaSet.cancel();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.AnalysisLoadingView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */