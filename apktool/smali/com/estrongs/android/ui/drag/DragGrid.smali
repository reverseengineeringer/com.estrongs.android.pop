.class public Lcom/estrongs/android/ui/drag/DragGrid;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/estrongs/android/ui/drag/s;


# instance fields
.field private a:Lcom/estrongs/android/ui/drag/d;

.field private b:Z

.field private c:Lcom/estrongs/fs/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->a:Lcom/estrongs/android/ui/drag/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->e:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_1
    iput-boolean v3, p0, Lcom/estrongs/android/ui/drag/DragGrid;->f:Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->f:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragGrid;->d:Ljava/lang/String;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->f:Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/DragGrid;->a:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 8

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    move-object v0, v7

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-object v1, p7

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    const/4 v5, 0x0

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;Z)V

    instance-of v0, v7, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    check-cast v7, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/drag/DragGrid;->f:Z

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->g:Z

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "item_is_scanned_server"

    invoke-interface {p1, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "item_is_scanned_server"

    invoke-interface {p1, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->h:Z

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->a()V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/ui/drag/DragGrid;->h:Z

    goto :goto_1
.end method

.method public b(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->a()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v3, 0x50

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->g:Z

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    instance-of v1, v1, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_4

    const/16 v0, 0x31

    const/16 v1, 0x92

    const/16 v2, 0xf9

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const/16 v0, 0xff

    invoke-static {v3, v0, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_2
.end method

.method public e(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/drag/DragGrid;->g:Z

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragGrid;->c:Lcom/estrongs/fs/h;

    instance-of v1, v1, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragGrid;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
