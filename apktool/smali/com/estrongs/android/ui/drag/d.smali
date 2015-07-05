.class public Lcom/estrongs/android/ui/drag/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private final A:I

.field private final B:I

.field private C:I

.field private D:I

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Z

.field private H:Lcom/estrongs/fs/h;

.field private I:Lcom/estrongs/android/view/aw;

.field private J:Z

.field private K:Z

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/drag/s;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/drag/s;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/estrongs/android/ui/drag/g;

.field private O:Landroid/os/IBinder;

.field private P:Landroid/view/View;

.field private Q:Lcom/estrongs/android/ui/drag/k;

.field private R:I

.field private S:Lcom/estrongs/android/ui/drag/i;

.field private T:Landroid/graphics/Rect;

.field private U:Z

.field private V:Landroid/graphics/RectF;

.field private W:Lcom/estrongs/android/ui/drag/s;

.field private X:Landroid/view/inputmethod/InputMethodManager;

.field private Y:I

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/os/Vibrator;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Region;

.field private final h:[I

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:Landroid/util/DisplayMetrics;

.field private n:Landroid/view/View;

.field private o:F

.field private p:F

.field private q:I

.field private r:Lcom/estrongs/android/ui/drag/l;

.field private s:Ljava/lang/Object;

.field private t:Lcom/estrongs/android/ui/drag/m;

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/drag/j;",
            ">;"
        }
    .end annotation
.end field

.field private final w:I

.field private final x:I

.field private y:Z

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/ui/drag/d;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/ui/drag/d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->g:Landroid/graphics/Region;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->h:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->w:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->x:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->z:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->A:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->B:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->J:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    iput v1, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    new-instance v0, Lcom/estrongs/android/ui/drag/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/drag/i;-><init>(Lcom/estrongs/android/ui/drag/d;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->T:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->q:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->e:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->Y:I

    return-void
.end method

.method private static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/drag/d;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    return p1
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_0
    const/high16 v0, 0x100000

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.DragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed getViewBitmap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    goto :goto_0
.end method

.method private a(II[I)Lcom/estrongs/android/ui/drag/s;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragActionZone;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragActionZone;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/drag/DragActionZone;->getLocationOnScreen([I)V

    aget v5, p3, v8

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3, p1, p2}, Lcom/estrongs/android/ui/drag/DragActionZone;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v9, p0, Lcom/estrongs/android/ui/drag/d;->U:Z

    iput v8, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    aget v1, p3, v8

    sub-int v1, p1, v1

    aput v1, p3, v8

    aget v1, p3, v9

    sub-int v1, p2, v1

    aput v1, p3, v9

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput-boolean v8, p0, Lcom/estrongs/android/ui/drag/d;->U:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->G:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v2, p0, Lcom/estrongs/android/ui/drag/d;->C:I

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->D:I

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/s;

    invoke-interface {v0, v3}, Lcom/estrongs/android/ui/drag/s;->getHitRect(Landroid/graphics/Rect;)V

    invoke-interface {v0, p3}, Lcom/estrongs/android/ui/drag/s;->getLocationOnScreen([I)V

    aget v5, p3, v8

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/s;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/s;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    aget v1, p3, v8

    sub-int v1, p1, v1

    aput v1, p3, v8

    aget v1, p3, v9

    sub-int v1, p2, v1

    aput v1, p3, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;IIIIIII)V
    .locals 11

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    float-to-int v0, v0

    sub-int v3, v0, p2

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    float-to-int v0, v0

    sub-int v4, v0, p3

    :try_start_0
    new-instance v0, Lcom/estrongs/android/ui/drag/m;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    new-instance v9, Lcom/estrongs/android/ui/drag/f;

    invoke-direct {v9, p0}, Lcom/estrongs/android/ui/drag/f;-><init>(Lcom/estrongs/android/ui/drag/d;)V

    move-object v2, p1

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/estrongs/android/ui/drag/m;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIIILjava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->O:Landroid/os/IBinder;

    iget v2, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    float-to-int v2, v2

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v5}, Lcom/estrongs/android/ui/drag/m;->a(Landroid/os/IBinder;II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    new-instance v5, Lcom/estrongs/android/ui/drag/h;

    move-object v6, p0

    move-object v7, v0

    move/from16 v8, p8

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/estrongs/android/ui/drag/h;-><init>(Lcom/estrongs/android/ui/drag/d;Lcom/estrongs/android/ui/drag/m;III)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;IIIIIILcom/estrongs/android/ui/drag/l;Ljava/lang/Object;I)V
    .locals 10

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->X:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->X:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->X:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->O:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    float-to-int v0, v0

    sub-int v3, v0, p2

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    float-to-int v0, v0

    sub-int v4, v0, p3

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    :try_start_0
    new-instance v0, Lcom/estrongs/android/ui/drag/m;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    new-instance v9, Lcom/estrongs/android/ui/drag/e;

    invoke-direct {v9, p0}, Lcom/estrongs/android/ui/drag/e;-><init>(Lcom/estrongs/android/ui/drag/d;)V

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/estrongs/android/ui/drag/m;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIIILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->O:Landroid/os/IBinder;

    iget v2, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    float-to-int v2, v2

    iget v3, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/drag/m;->a(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->h()V

    return-void
.end method

.method private a(FF)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/estrongs/android/ui/drag/d;->h:[I

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1, v10}, Lcom/estrongs/android/ui/drag/d;->a(II[I)Lcom/estrongs/android/ui/drag/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/estrongs/android/ui/drag/s;->d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/estrongs/android/ui/drag/s;->e(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/estrongs/android/ui/drag/s;->a(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v8}, Lcom/estrongs/android/ui/drag/l;->a(Landroid/view/View;Z)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/estrongs/android/ui/drag/l;->a(Landroid/view/View;Z)V

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->Q:Lcom/estrongs/android/ui/drag/k;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/drag/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->U:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/drag/d;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/drag/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/drag/d;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->C:I

    return v0
.end method

.method private g()V
    .locals 15

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->H:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->H:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->D()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/drag/j;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/view/aw;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v4, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->h:[I

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    iget-object v9, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    iget v10, p0, Lcom/estrongs/android/ui/drag/d;->u:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/graphics/Bitmap;IIIIIILcom/estrongs/android/ui/drag/l;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->C()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v12

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->C()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->y:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    :goto_2
    const/4 v0, 0x0

    move v11, v0

    :goto_3
    if-ge v11, v9, :cond_c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_5
    :goto_4
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    move v9, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    move v10, v2

    :goto_5
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->h()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->h:[I

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->getLocationOnScreen([I)V

    :goto_6
    const/4 v0, 0x0

    aget v2, v3, v0

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v8, v11, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/graphics/Bitmap;IIIIIII)V

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v13, v2

    if-gtz v2, :cond_a

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    :goto_7
    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->a()I

    move-result v0

    if-ge v0, v12, :cond_b

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v3, v0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v3, v2

    goto :goto_7

    :cond_b
    const/4 v0, 0x1

    aput v14, v3, v0

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->Q:Lcom/estrongs/android/ui/drag/k;

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/k;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/estrongs/android/ui/drag/d;->q:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/estrongs/android/ui/drag/d;->q:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->q:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->q:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->N:Lcom/estrongs/android/ui/drag/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->N:Lcom/estrongs/android/ui/drag/g;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    iget v3, p0, Lcom/estrongs/android/ui/drag/d;->u:I

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/ui/drag/g;->a(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_d
    move v10, v2

    goto/16 :goto_5
.end method

.method static synthetic h(Lcom/estrongs/android/ui/drag/d;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->D:I

    return v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/ui/drag/d;->j:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/d;->n:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->N:Lcom/estrongs/android/ui/drag/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->N:Lcom/estrongs/android/ui/drag/g;

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/g;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/m;->c()V

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    :cond_3
    iput-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    iput-object v1, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/drag/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->y:Z

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/drag/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->v:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->h()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/d;->N:Lcom/estrongs/android/ui/drag/g;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/d;->Q:Lcom/estrongs/android/ui/drag/k;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/s;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/ui/drag/l;IZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/d;->H:Lcom/estrongs/fs/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/d;->I:Lcom/estrongs/android/view/aw;

    iput p4, p0, Lcom/estrongs/android/ui/drag/d;->u:I

    iput-object p3, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->U:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->G:Z

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->H:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->g()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->i()V

    iget-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->J:Z

    if-eqz v1, :cond_0

    iput-boolean v6, p0, Lcom/estrongs/android/ui/drag/d;->K:Z

    :cond_0
    iput-boolean v6, p0, Lcom/estrongs/android/ui/drag/d;->J:Z

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v5, v3}, Lcom/estrongs/android/ui/drag/d;->a(III)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v5, v4}, Lcom/estrongs/android/ui/drag/d;->a(III)I

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    return v0

    :cond_2
    iput-boolean v5, p0, Lcom/estrongs/android/ui/drag/d;->J:Z

    iput-boolean v5, p0, Lcom/estrongs/android/ui/drag/d;->K:Z

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->g()V

    goto :goto_1

    :pswitch_1
    int-to-float v0, v3

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    int-to-float v0, v4

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->C:I

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->T:Landroid/graphics/Rect;

    iget v3, p0, Lcom/estrongs/android/ui/drag/d;->Y:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->Y:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->Y:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->Y:I

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-eqz v0, :cond_3

    int-to-float v0, v3

    int-to-float v1, v4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/drag/d;->a(FF)Z

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->h()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->P:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/ui/drag/s;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->K:Z

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/ui/drag/d;->a(III)I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/drag/d;->m:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/ui/drag/d;->a(III)I

    move-result v10

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    int-to-float v0, v9

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->k:F

    int-to-float v0, v10

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->l:F

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/drag/m;->a(II)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->C:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->D:I

    iget-object v11, p0, Lcom/estrongs/android/ui/drag/d;->h:[I

    invoke-direct {p0, v9, v10, v11}, Lcom/estrongs/android/ui/drag/d;->a(II[I)Lcom/estrongs/android/ui/drag/s;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/estrongs/android/ui/drag/s;->c(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->V:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->V:Landroid/graphics/RectF;

    int-to-float v1, v9

    int-to-float v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    :cond_5
    iget-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->U:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/ui/drag/d;->G:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v9, v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v9, v1, :cond_9

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/i;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v5, v5

    iget v6, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v8, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/estrongs/android/ui/drag/s;->d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    iget v4, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/estrongs/android/ui/drag/s;->b(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->W:Lcom/estrongs/android/ui/drag/s;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/d;->r:Lcom/estrongs/android/ui/drag/l;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    iget v5, p0, Lcom/estrongs/android/ui/drag/d;->o:F

    float-to-int v5, v5

    iget v6, p0, Lcom/estrongs/android/ui/drag/d;->p:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/estrongs/android/ui/drag/d;->t:Lcom/estrongs/android/ui/drag/m;

    iget-object v8, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/estrongs/android/ui/drag/s;->d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v9, v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v9, v1, :cond_a

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/i;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v10, v1, :cond_b

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/i;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v0, :cond_c

    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/i;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/drag/d;->R:I

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/i;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/d;->S:Lcom/estrongs/android/ui/drag/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-eqz v0, :cond_d

    int-to-float v0, v9

    int-to-float v1, v10

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/drag/d;->a(FF)Z

    :cond_d
    invoke-direct {p0}, Lcom/estrongs/android/ui/drag/d;->h()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/d;->a()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->G:Z

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/d;->s:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/d;->i:Z

    return v0
.end method
