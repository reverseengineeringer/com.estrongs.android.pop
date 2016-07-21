.class public Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/text/TextPaint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Point;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Landroid/animation/AnimatorSet;

.field private n:F

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Z

.field private q:Lcom/estrongs/android/pop/app/analysis/view/w;

.field private r:Landroid/graphics/PorterDuffXfermode;

.field private s:Landroid/graphics/BitmapShader;

.field private t:Landroid/graphics/Matrix;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v1, 0x7f07004e

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070063

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->f:I

    const v0, 0x7f07005b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->g:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->h:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->i:I

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->j:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v1, 0x7f07004e

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070063

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->f:I

    const v0, 0x7f07005b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->g:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->h:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->i:I

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->j:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const v1, 0x7f07004e

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f070063

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->f:I

    const v0, 0x7f07005b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->g:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->h:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->i:I

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->j:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const v1, 0x7f07004e

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f070063

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->f:I

    const v0, 0x7f07005b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->g:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->h:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->i:I

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->j:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c()V

    return-void
.end method

.method private a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->h:I

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    return-wide v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->r:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->y:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->i:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c:Landroid/graphics/Paint;

    const-string v1, "#dedfe0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->y:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->s:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->t:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->s:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->s:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const-string v0, "animateScan"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->k:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/v;-><init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->o:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/w;

    invoke-direct {v0, p0, v5}, Lcom/estrongs/android/pop/app/analysis/view/w;-><init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;Lcom/estrongs/android/pop/app/analysis/view/v;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getHeight()I

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

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->t:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->s:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->s:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42960000    # 75.0f

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v4, 0x7f07008f

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->p:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->r:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->p:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->w:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    const v6, 0x7f070080

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xca5b0e
        -0xca5b0e
        -0xca5b0e
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->q:Lcom/estrongs/android/pop/app/analysis/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method

.method public getAnimateScan()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getHeight()I

    move-result v2

    const v3, 0x7f070059

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->e(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->f:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->g:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->resolveSize(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimateScan(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->n:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->postInvalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->l:Ljava/lang/String;

    return-void
.end method
