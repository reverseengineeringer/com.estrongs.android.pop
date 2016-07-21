.class Lcom/estrongs/android/ui/drag/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/drag/d;

.field private b:Lcom/estrongs/android/ui/drag/m;

.field private c:J

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/drag/d;Lcom/estrongs/android/ui/drag/m;III)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/drag/h;->c:J

    iput p3, p0, Lcom/estrongs/android/ui/drag/h;->d:I

    iput p4, p0, Lcom/estrongs/android/ui/drag/h;->e:I

    iput p5, p0, Lcom/estrongs/android/ui/drag/h;->f:I

    return-void
.end method

.method private a()I
    .locals 4

    const/16 v1, 0xf

    const/4 v0, 0x5

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->j(Lcom/estrongs/android/ui/drag/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-le v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->a()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v3, p2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {v3, p1, v6, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private b()I
    .locals 3

    const/16 v0, 0x1e

    iget v1, p0, Lcom/estrongs/android/ui/drag/h;->d:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->a()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(FF)D
    .locals 2

    sub-float v0, p2, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 11

    const/4 v5, 0x0

    const/high16 v10, 0x442f0000    # 700.0f

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/m;->c()V

    iput-object v5, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/drag/h;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/ui/drag/h;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/drag/m;->getRegistrationX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/ui/drag/h;->f:I

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/drag/m;->getRegistrationY()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->g(Lcom/estrongs/android/ui/drag/d;)I

    move-result v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-double v4, v3

    int-to-float v3, v0

    invoke-virtual {p0, v3, v10}, Lcom/estrongs/android/ui/drag/h;->a(FF)D

    move-result-wide v6

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->b()I

    move-result v3

    add-int/2addr v1, v3

    int-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v1, v4

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->h(Lcom/estrongs/android/ui/drag/d;)I

    move-result v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->b()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-double v4, v3

    int-to-float v0, v0

    invoke-virtual {p0, v0, v10}, Lcom/estrongs/android/ui/drag/h;->a(FF)D

    move-result-wide v6

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->b()I

    move-result v0

    sub-int v0, v2, v0

    int-to-double v2, v0

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/ui/drag/m;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->i(Lcom/estrongs/android/ui/drag/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->e(Lcom/estrongs/android/ui/drag/d;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x19

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/m;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/m;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/drag/h;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/h;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/estrongs/android/ui/drag/m;->a(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/drag/d;->f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v3}, Lcom/estrongs/android/ui/drag/d;->g(Lcom/estrongs/android/ui/drag/d;)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/h;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v4}, Lcom/estrongs/android/ui/drag/d;->h(Lcom/estrongs/android/ui/drag/d;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/drag/m;->a(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/m;->c()V

    iput-object v5, p0, Lcom/estrongs/android/ui/drag/h;->b:Lcom/estrongs/android/ui/drag/m;

    goto/16 :goto_0
.end method
