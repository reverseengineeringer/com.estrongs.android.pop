.class Lcom/estrongs/android/pop/view/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bd;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/ap;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->b()Lcom/estrongs/android/ui/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/j/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput p1, p0, Lcom/estrongs/android/pop/view/ap;->a:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/bk;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/view/cr;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/a;->d(Z)V

    return-void
.end method

.method public a(IF)V
    .locals 6

    const v1, 0x38d1b717    # 1.0E-4f

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v2, v3

    :goto_0
    cmpg-float v0, v2, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/a;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, v4

    move v1, v0

    :goto_2
    cmpg-float v0, p2, v3

    if-gez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, v4

    :goto_3
    iget-object v4, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    invoke-virtual {v4, p1, v5}, Lcom/estrongs/android/ui/controller/a;->a(IF)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/estrongs/android/ui/controller/a;->a(IF)V

    if-eq v1, v0, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/ui/controller/a;->a(IF)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lcom/estrongs/android/ui/controller/a;->a(IIF)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, v4

    rem-int/2addr v0, v4

    move v1, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, v4

    rem-int/2addr v0, v4

    goto :goto_3
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/a;->d(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/controller/a;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->ak()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/controller/a;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/pop/view/ap;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->j_()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/cr;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/cr;->a(Z)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/view/cr;

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/view/dv;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->W()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->l()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/app/f/a;->a()Lcom/estrongs/android/pop/app/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f/a;->c()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab()V

    goto :goto_1
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
