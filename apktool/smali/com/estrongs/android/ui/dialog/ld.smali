.class public Lcom/estrongs/android/ui/dialog/ld;
.super Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/cr;)V
    .locals 9

    const/16 v8, 0x26

    const/4 v3, 0x0

    const-string v0, "all"

    const-string v0, ""

    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->o()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "all"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_0

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "all"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p1, Lcom/estrongs/android/ui/b/u;

    if-eqz v4, :cond_3

    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->F(I)Z

    move-result v5

    if-nez v5, :cond_4

    instance-of v5, p1, Lcom/estrongs/android/view/b;

    if-eqz v5, :cond_5

    :cond_4
    const-string v0, "apk"

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v5

    if-nez v5, :cond_6

    instance-of v5, p1, Lcom/estrongs/android/view/eb;

    if-eqz v5, :cond_7

    :cond_6
    const-string v0, "image"

    goto :goto_0

    :cond_7
    invoke-static {v4}, Lcom/estrongs/android/util/bg;->e(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v0, "music"

    goto :goto_0

    :cond_8
    invoke-static {v4}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v0, "video"

    goto :goto_0

    :cond_9
    invoke-static {v4}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    const-string v0, "document"

    goto :goto_0

    :cond_b
    const-string v2, "all"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    :goto_1
    add-int/lit8 v0, v5, -0x1

    if-ge v1, v0, :cond_c

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v5, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Lcom/estrongs/android/view/b;

    if-eqz v0, :cond_d

    const-string v0, "apk"

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lcom/estrongs/android/view/eb;

    if-eqz v0, :cond_e

    const-string v0, "image"

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "music"

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "video"

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "document"

    goto/16 :goto_0

    :cond_11
    move-object v0, v2

    goto/16 :goto_0
.end method
