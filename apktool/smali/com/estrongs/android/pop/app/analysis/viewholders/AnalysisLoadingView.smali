.class public Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;
.super Landroid/view/View;


# instance fields
.field private mAnimValueScan:F

.field private mAnimaScan:Landroid/animation/ObjectAnimator;

.field private mAnimaSet:Landroid/animation/AnimatorSet;

.field private mAnimateTime:J

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapShaderMatrix:Landroid/graphics/Matrix;

.field private mBmpBg:Landroid/graphics/Bitmap;

.field private mBmpIconEmpty:Landroid/graphics/Bitmap;

.field private mBmpIconFull:Landroid/graphics/Bitmap;

.field private mBmpNumberBg:Landroid/graphics/Bitmap;

.field private mBmpRing:Landroid/graphics/Bitmap;

.field private mBmpScan:Landroid/graphics/Bitmap;

.field private mCancelTextColor:Ljava/lang/String;

.field private mCancelTextSize:I

.field private mCenter:Landroid/graphics/Point;

.field private mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mIsFull:Z

.field private mPadding:I

.field private mPaintCancel:Landroid/text/TextPaint;

.field private mPaintLine:Landroid/graphics/Paint;

.field private mPaintNumber:Landroid/graphics/Paint;

.field private mPaintScan:Landroid/graphics/Paint;

.field private mPaintTitle:Landroid/text/TextPaint;

.field private mRectCancel:Landroid/graphics/Rect;

.field private mRectTitle:Landroid/graphics/RectF;

.field private mTitle:Ljava/lang/String;

.field private mTitleTextColor:Ljava/lang/String;

.field private mTitleTextSize:I

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private onCancelListener:Lcom/estrongs/android/pop/app/analysis/viewholders/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f07005f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultWidth:I

    const v0, 0x7f070068

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultHeight:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPadding:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextSize:I

    const-string v0, "#333333"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextColor:Ljava/lang/String;

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextSize:I

    const-string v0, "#35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f07005f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultWidth:I

    const v0, 0x7f070068

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultHeight:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPadding:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextSize:I

    const-string v0, "#333333"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextColor:Ljava/lang/String;

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextSize:I

    const-string v0, "#35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f07005f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultWidth:I

    const v0, 0x7f070068

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultHeight:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPadding:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextSize:I

    const-string v0, "#333333"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextColor:Ljava/lang/String;

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextSize:I

    const-string v0, "#35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f07005f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultWidth:I

    const v0, 0x7f070068

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultHeight:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPadding:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextSize:I

    const-string v0, "#333333"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextColor:Ljava/lang/String;

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextSize:I

    const-string v0, "#35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mIsFull:Z

    return v0
.end method

.method static synthetic access$002(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mIsFull:Z

    return p1
.end method

.method static synthetic access$200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    return-wide v0
.end method

.method private dip2px(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private draw9Png(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 3

    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-virtual {v0, p1, p3, p4}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBg(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpBg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->draw9Png(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBmpNumber(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawBmpRing(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintNumber:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42960000    # 75.0f

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintNumber:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintNumber:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawBmpRing(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCancelText(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintLine:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawScan(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mIsFull:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconEmpty:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mIsFull:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mIsFull:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpScan:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconEmpty:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private drawTitleText(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v2, v1, v6

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    iget v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPadding:I

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->dip2px(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectTitle:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconFull:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpIconEmpty:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpScan:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpRing:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpNumberBg:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintScan:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintTitle:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitleTextSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintLine:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintLine:Landroid/graphics/Paint;

    const-string v1, "#dedfe0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintNumber:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBmpNumberBg:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShader:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShaderMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintNumber:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const-string v0, "animateScan"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/c;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaScan:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;Lcom/estrongs/android/pop/app/analysis/viewholders/c;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isClickCancel(II)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAnimateScan()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCenter:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawBg(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawTitleText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawCancelText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawLine(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawBmpNumber(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->drawScan(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultWidth:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->dip2px(I)I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mDefaultHeight:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->dip2px(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->resolveSize(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->isClickCancel(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->isClickCancel(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->onCancelListener:Lcom/estrongs/android/pop/app/analysis/viewholders/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->onCancelListener:Lcom/estrongs/android/pop/app/analysis/viewholders/e;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/e;->a()V

    :cond_1
    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mPaintCancel:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCancelTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mRectCancel:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setAnimateScan(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->postInvalidate()V

    return-void
.end method

.method public setOnCancelListener(Lcom/estrongs/android/pop/app/analysis/viewholders/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->onCancelListener:Lcom/estrongs/android/pop/app/analysis/viewholders/e;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public startAnimate()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimValueScan:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public stopAnimate()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mCustomAnimatoion:Lcom/estrongs/android/pop/app/analysis/viewholders/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method
