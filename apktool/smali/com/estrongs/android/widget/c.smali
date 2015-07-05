.class public Lcom/estrongs/android/widget/c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/widget/f;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/estrongs/android/widget/d;

.field protected e:Lcom/estrongs/android/ui/drag/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/c;->e:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/f;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0}, Lcom/estrongs/android/widget/d;->a()Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, p2}, Lcom/estrongs/android/widget/d;->b(Landroid/view/View;)Lcom/estrongs/android/widget/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/widget/e;->h:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->e:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    iget-object v3, p0, Lcom/estrongs/android/widget/c;->e:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragGrid;->a(Lcom/estrongs/android/ui/drag/d;)V

    iget-object v3, p0, Lcom/estrongs/android/widget/c;->e:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/s;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, v2, p1}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/e;I)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0}, Lcom/estrongs/android/widget/d;->a()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->d:Lcom/estrongs/android/widget/d;

    invoke-interface {v0, p2}, Lcom/estrongs/android/widget/d;->b(Landroid/view/View;)Lcom/estrongs/android/widget/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    move-object v2, v0

    move-object v1, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/f;

    invoke-interface {v0}, Lcom/estrongs/android/widget/f;->a()V

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/c;->a:Lcom/estrongs/android/widget/f;

    invoke-interface {v0}, Lcom/estrongs/android/widget/f;->b()V

    :cond_1
    return-void
.end method
