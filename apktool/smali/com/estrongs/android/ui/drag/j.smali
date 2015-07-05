.class public Lcom/estrongs/android/ui/drag/j;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/drag/t;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/estrongs/android/ui/drag/DragGrid;

.field c:Landroid/graphics/Bitmap;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/j;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/drag/j;->d:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;Lcom/estrongs/android/ui/drag/j;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/t;

    iget v1, v0, Lcom/estrongs/android/ui/drag/t;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/android/ui/drag/t;->a:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    new-instance v2, Lcom/estrongs/android/ui/drag/t;

    invoke-direct {v2, p2}, Lcom/estrongs/android/ui/drag/t;-><init>(Lcom/estrongs/android/ui/drag/j;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/drag/DragGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/j;->b:Lcom/estrongs/android/ui/drag/DragGrid;

    return-void
.end method

.method public b()Lcom/estrongs/android/ui/drag/DragGrid;
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/j;->d:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/j;->d()Lcom/estrongs/android/ui/drag/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->b:Lcom/estrongs/android/ui/drag/DragGrid;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/ui/drag/j;->b:Lcom/estrongs/android/ui/drag/DragGrid;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->b:Lcom/estrongs/android/ui/drag/DragGrid;

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/drag/j;->d:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/j;->d()Lcom/estrongs/android/ui/drag/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public d()Lcom/estrongs/android/ui/drag/j;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/t;

    iget v2, v0, Lcom/estrongs/android/ui/drag/t;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/t;->b:Lcom/estrongs/android/ui/drag/j;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/ui/drag/j;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/t;->b:Lcom/estrongs/android/ui/drag/j;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/j;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method
