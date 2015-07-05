.class public Lcom/estrongs/fs/util/a/d;
.super Lcom/estrongs/fs/util/a/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/a/a;-><init>(Z)V

    return-void
.end method

.method private c(Lcom/estrongs/fs/h;)Z
    .locals 1

    :try_start_0
    const-string v0, "item_is_scanned_server"

    invoke-interface {p1, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/a/d;->a(Lcom/estrongs/fs/h;)Z

    move-result v4

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/util/a/d;->a(Lcom/estrongs/fs/h;)Z

    move-result v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lcom/estrongs/fs/util/a/d;->c(Lcom/estrongs/fs/h;)Z

    move-result v4

    invoke-direct {p0, p2}, Lcom/estrongs/fs/util/a/d;->c(Lcom/estrongs/fs/h;)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/util/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/util/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x30

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v0

    move v2, v0

    :goto_0
    if-nez v0, :cond_9

    if-ge v2, v5, :cond_9

    if-ge v1, v6, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    sub-int v7, v4, v2

    :goto_2
    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    sub-int v8, v3, v1

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    sub-int v1, v4, v2

    sub-int v9, v3, v0

    sub-int/2addr v1, v9

    if-eqz v1, :cond_b

    iget v0, p0, Lcom/estrongs/fs/util/a/d;->c:I

    mul-int/2addr v0, v1

    :goto_5
    return v0

    :cond_4
    move v0, v1

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_5

    if-ge v0, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int v0, v9, v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/estrongs/fs/util/a/d;->c:I

    mul-int/2addr v0, v1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v1, v3, -0x1

    sub-int v0, v8, v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_8

    if-nez v8, :cond_8

    if-eq v3, v4, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_9
    if-nez v0, :cond_a

    sub-int v0, v5, v6

    iget v1, p0, Lcom/estrongs/fs/util/a/d;->c:I

    mul-int/2addr v0, v1

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/estrongs/fs/util/a/d;->c:I

    mul-int/2addr v0, v1

    goto :goto_5

    :cond_b
    move v1, v2

    goto :goto_6
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/h;

    check-cast p2, Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/util/a/d;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method
