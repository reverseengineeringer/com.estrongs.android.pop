.class Lcom/estrongs/android/ui/dialog/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ce;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v1, "Network error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v0
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/NetFsException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0804ab

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804ab

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ce;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/dialog/ca;->b(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ca;->c(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ca;->g(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ca;->g(Lcom/estrongs/android/ui/dialog/ca;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    const-string v2, "public_share_link"

    invoke-interface {v0, v2}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Lcom/estrongs/android/ui/dialog/cf;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/dialog/cf;-><init>(Lcom/estrongs/android/ui/dialog/ce;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ca;->c(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ce;->b:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
