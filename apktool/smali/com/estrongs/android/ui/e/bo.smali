.class Lcom/estrongs/android/ui/e/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/view/by;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/by;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bR(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/estrongs/android/ui/dialog/bc;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/bc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/bc;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

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

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/estrongs/android/util/am;->Q(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/am;->R(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/az;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/az;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/dialog/az;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/az;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/az;)Lcom/estrongs/android/ui/dialog/az;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/az;->b()V

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/estrongs/android/util/am;->bh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/fs;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/fs;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/dialog/fs;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/fs;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/fs;)Lcom/estrongs/android/ui/dialog/fs;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/fs;->b()V

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lcom/estrongs/android/util/am;->aP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/bf;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/bf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/bf;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/dialog/bf;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/bf;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/bf;)Lcom/estrongs/android/ui/dialog/bf;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/bf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/bf;->b()V

    goto/16 :goto_0

    :cond_9
    invoke-static {v2}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const v3, 0x7f0b01c3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Lcom/estrongs/android/ui/dialog/cg;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b0062

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b0063

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/bp;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/bp;-><init>(Lcom/estrongs/android/ui/e/bo;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Lcom/estrongs/android/ui/dialog/es;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/es;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/es;->a()V

    goto/16 :goto_0

    :cond_c
    invoke-static {v2}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_d
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_e
    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v3, Lcom/estrongs/android/ui/dialog/cg;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/cg;)Lcom/estrongs/android/ui/dialog/cg;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b0062

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v5, v5, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b0063

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/e/bq;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/e/bq;-><init>(Lcom/estrongs/android/ui/e/bo;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0

    :cond_f
    invoke-static {v2}, Lcom/estrongs/android/util/am;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/estrongs/android/ui/b/l;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/b/l;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/l;->show()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b01c3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bo;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b01c3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
