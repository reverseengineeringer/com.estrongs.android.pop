.class Lcom/estrongs/android/ui/a/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/a/a;

.field final synthetic d:Z

.field final synthetic e:Lcom/estrongs/android/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;IILcom/estrongs/android/ui/a/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    iput p2, p0, Lcom/estrongs/android/ui/a/ca;->a:I

    iput p3, p0, Lcom/estrongs/android/ui/a/ca;->b:I

    iput-object p4, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    iput-boolean p5, p0, Lcom/estrongs/android/ui/a/ca;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const v8, 0x7f0b037a

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/a/ca;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/a/ca;->b:I

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->c()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->c(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Z

    move-result v5

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ca;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->c()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    if-nez v0, :cond_7

    new-array v0, v3, [Ljava/lang/String;

    :goto_2
    iget-boolean v6, p0, Lcom/estrongs/android/ui/a/ca;->d:Z

    if-eqz v6, :cond_4

    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v6}, Lcom/estrongs/android/util/bd;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v7}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v7

    const v8, 0x7f0b045b

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    :cond_4
    if-eqz v1, :cond_5

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bd;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v6, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v6}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    const v7, 0x7f0b009d

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    :cond_5
    new-instance v1, Lcom/estrongs/android/ui/a/cb;

    invoke-direct {v1, p0, v5}, Lcom/estrongs/android/ui/a/cb;-><init>(Lcom/estrongs/android/ui/a/ca;Z)V

    invoke-virtual {v4, v0, v3, v1}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4, v3}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    new-array v0, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v6}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    const v7, 0x7f0b0379

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    iget-object v6, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v6}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_2

    :cond_8
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/ui/a/ca;->e:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v6}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_2
.end method
