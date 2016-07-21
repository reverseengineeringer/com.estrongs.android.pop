.class public Lcom/estrongs/android/view/a;
.super Lcom/estrongs/android/view/cr;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/estrongs/android/view/cr;->a(I)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    if-nez v1, :cond_2

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    if-nez v1, :cond_3

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/a;->T:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/a;->c(Lcom/estrongs/fs/h;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/a;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/estrongs/fs/impl/c/b;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/c/b;-><init>(Ljava/io/File;)V

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/c/b;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/c/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3
.end method
