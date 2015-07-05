.class Lcom/estrongs/android/ui/dialog/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bx;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bj;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bj;->i:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/dialog/bs;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    iget-object v3, v1, Lcom/estrongs/android/ui/dialog/bs;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bs;->c:Ljava/util/ArrayList;

    iget v0, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bj;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bj;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bt;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bu;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bj;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
