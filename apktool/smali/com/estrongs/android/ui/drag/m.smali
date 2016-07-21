.class public Lcom/estrongs/android/ui/drag/m;
.super Landroid/view/View;

# interfaces
.implements Lcom/estrongs/android/ui/drag/w;


# instance fields
.field a:Lcom/estrongs/android/ui/drag/u;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIIILjava/lang/Runnable;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/estrongs/android/ui/drag/m;->g:F

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/m;->i:Landroid/view/WindowManager;

    new-instance v1, Lcom/estrongs/android/ui/drag/u;

    const/4 v2, 0x0

    const/16 v3, 0x6e

    invoke-direct {v1, v2, v3, p0}, Lcom/estrongs/android/ui/drag/u;-><init>(ZILcom/estrongs/android/ui/drag/w;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/m;->a:Lcom/estrongs/android/ui/drag/u;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p7

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v2, v1

    div-float v1, v2, v1

    iput v1, p0, Lcom/estrongs/android/ui/drag/m;->f:F

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v7, 0x1

    move-object v1, p2

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    add-int/lit8 v1, p3, 0x14

    iput v1, p0, Lcom/estrongs/android/ui/drag/m;->d:I

    add-int/lit8 v1, p4, 0x14

    iput v1, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    new-instance v1, Lcom/estrongs/android/ui/drag/n;

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/drag/n;-><init>(Lcom/estrongs/android/ui/drag/m;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/drag/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/ui/drag/o;

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/drag/o;-><init>(Lcom/estrongs/android/ui/drag/m;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/drag/m;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/estrongs/android/ui/drag/m;->f:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/drag/m;->f:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/drag/m;->g:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/m;->invalidate()V

    return-void
.end method

.method a(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/ui/drag/m;->d:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/m;->i:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Landroid/graphics/Bitmap;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    return-void
.end method

.method public a(Landroid/os/IBinder;II)V
    .locals 8

    const/4 v1, -0x2

    const/4 v7, -0x3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/estrongs/android/ui/drag/m;->d:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    sub-int v4, p3, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "NaviDragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/m;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/m;->i:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/estrongs/android/ui/drag/m;->f:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/drag/m;->g:F

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->a:Lcom/estrongs/android/ui/drag/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/u;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->i:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getRegistrationX()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/m;->d:I

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method getRegistrationY()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/m;->e:I

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/drag/m;->g:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v1, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/m;->c:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->c:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/m;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/m;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/drag/m;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/m;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/m;->invalidate()V

    return-void
.end method
