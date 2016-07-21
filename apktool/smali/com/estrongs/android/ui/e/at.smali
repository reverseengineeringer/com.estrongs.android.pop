.class Lcom/estrongs/android/ui/e/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/be;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/be;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/be;->a()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->S(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->T(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->b(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bb;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->b(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v3, Lcom/estrongs/android/ui/dialog/bb;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/bb;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/bb;)Lcom/estrongs/android/ui/dialog/bb;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->b(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bb;->b()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->c(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/fv;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->c(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fv;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v3, Lcom/estrongs/android/ui/dialog/fv;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/fv;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/fv;)Lcom/estrongs/android/ui/dialog/fv;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->c(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fv;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newItemClickListener.onMenuItemClick() catchs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->d(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bh;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->d(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bh;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v3, Lcom/estrongs/android/ui/dialog/bh;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/bh;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/bh;)Lcom/estrongs/android/ui/dialog/bh;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->d(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bh;->b()V

    goto/16 :goto_1

    :cond_7
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v3, 0x7f08023a

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v3, "Local_new"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    new-instance v0, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080093

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v5}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    const v6, 0x7f08019b

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v5}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    const v6, 0x7f08019d

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/au;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/au;-><init>(Lcom/estrongs/android/ui/e/at;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_9
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Lcom/estrongs/android/ui/dialog/ev;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/ev;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ev;->a()V

    goto/16 :goto_1

    :cond_a
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    new-instance v3, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;Lcom/estrongs/android/ui/dialog/ci;)Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    const v3, 0x7f080093

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v5}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    const v6, 0x7f08019b

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v5}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    const v6, 0x7f08019d

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/av;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/av;-><init>(Lcom/estrongs/android/ui/e/at;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->e(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_1

    :cond_d
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v0, Lcom/estrongs/android/ui/b/l;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/b/l;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/l;->show()V

    goto/16 :goto_1

    :cond_e
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->ad(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    check-cast v0, Lcom/estrongs/android/view/bx;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bx;->s()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v3, 0x7f08023a

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v3, 0x7f08023a

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
