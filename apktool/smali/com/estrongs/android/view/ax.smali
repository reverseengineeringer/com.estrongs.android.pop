.class Lcom/estrongs/android/view/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/a/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/aw;->e(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->H()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ftp://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "sftp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ftps://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ftpes://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "webdav://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "webdavs://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    if-ne v1, v5, :cond_3

    and-int v0, p2, v1

    if-eq v0, v5, :cond_7

    :cond_3
    if-ne v1, v4, :cond_4

    and-int v0, p2, v1

    if-eq v0, v4, :cond_7

    :cond_4
    if-ne v1, v6, :cond_5

    and-int v0, p2, v1

    if-eq v0, v6, :cond_7

    :cond_5
    if-ne v1, v7, :cond_6

    and-int v0, p2, v1

    if-eq v0, v7, :cond_7

    :cond_6
    const/16 v0, 0x20

    if-ne v1, v0, :cond_9

    and-int v0, p2, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/bb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bb;-><init>(Lcom/estrongs/android/view/ax;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-static {v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-static {v1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    if-ne v1, v5, :cond_b

    and-int v2, p2, v1

    if-eq v2, v5, :cond_f

    :cond_b
    if-ne v1, v4, :cond_c

    and-int v2, p2, v1

    if-eq v2, v4, :cond_f

    :cond_c
    if-ne v1, v6, :cond_d

    and-int v2, p2, v1

    if-eq v2, v6, :cond_f

    :cond_d
    if-ne v1, v7, :cond_e

    and-int v2, p2, v1

    if-eq v2, v7, :cond_f

    :cond_e
    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    and-int/2addr v1, p2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/view/aw;->J:Z

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->J:Z

    if-eqz v0, :cond_9

    if-eqz p4, :cond_14

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_11
    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const-string v1, "ftp://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    const-string v0, "sftp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ftps://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ftpes://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "webdav://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "webdavs://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto :goto_2

    :cond_14
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/aw;->e(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->H()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-ne v1, v5, :cond_2

    and-int v0, p3, v1

    if-eq v0, v5, :cond_6

    :cond_2
    if-ne v1, v3, :cond_3

    and-int v0, p3, v1

    if-eq v0, v3, :cond_6

    :cond_3
    if-ne v1, v6, :cond_4

    and-int v0, p3, v1

    if-eq v0, v6, :cond_6

    :cond_4
    if-ne v1, v7, :cond_5

    and-int v0, p3, v1

    if-eq v0, v7, :cond_6

    :cond_5
    const/16 v0, 0x20

    if-ne v1, v0, :cond_0

    and-int v0, p3, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ba;-><init>(Lcom/estrongs/android/view/ax;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    if-ne v1, v5, :cond_8

    and-int v2, p3, v1

    if-eq v2, v5, :cond_c

    :cond_8
    if-ne v1, v3, :cond_9

    and-int v2, p3, v1

    if-eq v2, v3, :cond_c

    :cond_9
    if-ne v1, v6, :cond_a

    and-int v2, p3, v1

    if-eq v2, v6, :cond_c

    :cond_a
    if-ne v1, v7, :cond_b

    and-int v2, p3, v1

    if-eq v2, v7, :cond_c

    :cond_b
    const/16 v2, 0x20

    if-ne v1, v2, :cond_d

    and-int/2addr v1, p3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v4, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto :goto_0

    :cond_d
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v4, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0

    :cond_e
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, v2, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v4, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_10
    invoke-static {p1}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v4, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/aw;->e(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->H()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-ne v1, v5, :cond_2

    and-int v2, p2, v1

    if-eq v2, v5, :cond_7

    :cond_2
    if-ne v1, v4, :cond_3

    and-int v2, p2, v1

    if-eq v2, v4, :cond_7

    :cond_3
    if-ne v1, v6, :cond_4

    and-int v2, p2, v1

    if-eq v2, v6, :cond_7

    :cond_4
    if-ne v1, v7, :cond_5

    and-int v2, p2, v1

    if-eq v2, v7, :cond_7

    :cond_5
    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    and-int/2addr v1, p2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "sftp://"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "ftps://"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "ftpes://"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "webdav://"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "webdavs://"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p3, :cond_8

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ay;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ay;-><init>(Lcom/estrongs/android/view/ax;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/estrongs/fs/a/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, v2, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/az;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/az;-><init>(Lcom/estrongs/android/view/ax;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v3, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0

    :cond_c
    if-ne v1, v5, :cond_d

    and-int v2, p2, v1

    if-eq v2, v5, :cond_11

    :cond_d
    if-ne v1, v4, :cond_e

    and-int v2, p2, v1

    if-eq v2, v4, :cond_11

    :cond_e
    if-ne v1, v6, :cond_f

    and-int v2, p2, v1

    if-eq v2, v6, :cond_11

    :cond_f
    if-ne v1, v7, :cond_10

    and-int v2, p2, v1

    if-eq v2, v7, :cond_11

    :cond_10
    const/16 v2, 0x20

    if-ne v1, v2, :cond_12

    and-int/2addr v1, p2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v3, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0

    :cond_12
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/estrongs/fs/a/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iget-object v2, v2, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v3, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0

    :cond_15
    invoke-static {v1}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_16
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    iput-boolean v3, v0, Lcom/estrongs/android/view/aw;->J:Z

    goto/16 :goto_0
.end method
