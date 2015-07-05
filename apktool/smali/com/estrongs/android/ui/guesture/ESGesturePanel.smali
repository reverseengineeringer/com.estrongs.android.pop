.class public Lcom/estrongs/android/ui/guesture/ESGesturePanel;
.super Landroid/view/View;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field private d:Z

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/gesture/Gesture;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Path;

.field private x:Lcom/estrongs/android/ui/guesture/c;

.field private y:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x20

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    const v0, 0x59009ae2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->n:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->p:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->q:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->r:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x20

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    const v0, 0x59009ae2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->n:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->p:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->q:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->r:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/16 v4, 0x20

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    const v0, 0x59009ae2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->n:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    iput v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->p:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->q:I

    iput v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->r:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x24

    iput v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    div-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->p:I

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->invalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    iput p2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->invalidate()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/guesture/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->x:Lcom/estrongs/android/ui/guesture/c;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->invalidate()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(FF)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, -0x64

    add-int/lit8 v1, v1, -0x12

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v2, -0x64

    add-int/lit8 v1, v1, 0x24

    add-int/lit8 v1, v1, 0x12

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/high16 v1, 0x42000000    # 32.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42d00000    # 104.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->s(Z)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v2}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(II)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(II)V

    goto :goto_1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->y:Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    iget-object v5, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    if-eqz v2, :cond_9

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xa0

    iget v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->r:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->s:I

    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->d:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->e:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    array-length v1, v2

    if-le v1, v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->o:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->n:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    iget v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->n:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v2, v1

    iget-boolean v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    if-eqz v3, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->p:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    aget-object v3, v2, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->w:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    if-nez v0, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c()V

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    if-ne v0, v7, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    :cond_7
    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->j:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    iget v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    iget v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    if-nez v0, :cond_9

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/estrongs/android/ui/guesture/b;->b:Z

    if-eqz v0, :cond_9

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    int-to-float v0, v0

    sput v0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->b:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c()V

    :cond_b
    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    if-ne v0, v7, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    :cond_c
    iget v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    if-ne v0, v7, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->t:I

    iget v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->u:I

    iget v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->i:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b()V

    iput-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(FF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    new-instance v1, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(FF)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    new-instance v1, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    new-instance v1, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    new-instance v1, Landroid/gesture/GestureStroke;

    iget-object v2, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->x:Lcom/estrongs/android/ui/guesture/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->x:Lcom/estrongs/android/ui/guesture/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/guesture/c;->a(Landroid/gesture/Gesture;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->m:Landroid/gesture/Gesture;

    goto/16 :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
