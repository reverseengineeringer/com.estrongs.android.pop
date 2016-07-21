.class Lcom/estrongs/android/ui/dialog/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bz;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/dialog/bu;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    iget-object v3, v1, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    iget v0, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bv;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
