.class public Lcom/estrongs/fs/util/a/f;
.super Lcom/estrongs/fs/util/a/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I
    .locals 13

    const/4 v3, 0x0

    const/16 v12, 0x2e

    const/4 v11, 0x4

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/a/f;->b(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/util/a/f;->b(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    move-object v4, v2

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v5}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v6}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v2, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v5}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v2}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "/"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-ne v2, v7, :cond_5

    if-ne v2, v11, :cond_10

    invoke-static {v5}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-ne v2, v11, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v5}, Lcom/estrongs/android/util/am;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/estrongs/android/util/am;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_3
    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    :goto_4
    return v0

    :cond_3
    const-string v2, ""

    move-object v4, v2

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    sub-int v0, v2, v7

    iget v2, p0, Lcom/estrongs/fs/util/a/f;->c:I

    mul-int/2addr v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/a/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v2

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/util/a/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v5

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_7
    if-nez v2, :cond_d

    if-nez v5, :cond_d

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    if-nez v3, :cond_b

    iget v0, p0, Lcom/estrongs/fs/util/a/f;->c:I

    mul-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    if-eqz v3, :cond_c

    iget v0, p0, Lcom/estrongs/fs/util/a/f;->c:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/util/a/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_d
    if-nez v2, :cond_e

    if-eqz v5, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    move-object v2, v3

    goto :goto_5

    :cond_10
    move v0, v1

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/h;

    check-cast p2, Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/util/a/f;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method
