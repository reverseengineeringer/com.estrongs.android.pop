.class public Lcom/estrongs/android/view/cm;
.super Lcom/estrongs/android/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/estrongs/android/widget/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/view/cd;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/cd;

    invoke-direct {p0}, Lcom/estrongs/android/widget/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/cm;->a:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cd;->d()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/cm;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/fs/h;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v4, p0, Lcom/estrongs/android/view/cm;->a:I

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    sget-object v2, Lcom/estrongs/fs/m;->L:Lcom/estrongs/fs/m;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v5, p0, Lcom/estrongs/android/view/cm;->a:I

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/cp;

    iget v1, v1, Lcom/estrongs/android/view/cp;->a:I

    iget v2, p0, Lcom/estrongs/android/view/cm;->a:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/cp;

    iget-boolean v1, v1, Lcom/estrongs/android/view/cp;->b:Z

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/cm;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/fs/h;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, p2}, Lcom/estrongs/android/widget/d;->b(Landroid/view/View;)Lcom/estrongs/android/widget/e;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cp;

    iget v1, p0, Lcom/estrongs/android/view/cm;->a:I

    iput v1, v0, Lcom/estrongs/android/view/cp;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cm;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/view/cp;->h:Ljava/lang/Object;

    iget v1, p0, Lcom/estrongs/android/view/cm;->a:I

    if-ne v1, v5, :cond_7

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/cd;

    iget-object v0, v0, Lcom/estrongs/android/view/cd;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/d;->b(Landroid/view/View;)Lcom/estrongs/android/widget/e;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cp;

    iget v2, p0, Lcom/estrongs/android/view/cm;->a:I

    iput v2, v0, Lcom/estrongs/android/view/cp;->a:I

    iput-boolean v4, v0, Lcom/estrongs/android/view/cp;->b:Z

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/view/cm;->e:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    iget-object v3, p0, Lcom/estrongs/android/view/cm;->e:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/s;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/cm;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, v2, p1}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/e;I)V

    move-object p2, v1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    iput v1, p0, Lcom/estrongs/android/view/cm;->a:I

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cp;

    goto :goto_2

    :cond_7
    move-object v2, v0

    move-object v1, p2

    goto :goto_3
.end method
