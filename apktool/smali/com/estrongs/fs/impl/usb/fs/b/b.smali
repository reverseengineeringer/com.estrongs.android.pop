.class public Lcom/estrongs/fs/impl/usb/fs/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Collection;)Lcom/estrongs/fs/impl/usb/fs/b/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/b/a;",
            ">;)",
            "Lcom/estrongs/fs/impl/usb/fs/b/a;"
        }
    .end annotation

    const/16 v5, 0x2e

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_4

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v3, -0x1

    if-ne v5, v3, :cond_6

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    :goto_1
    const-string v4, ""

    move v8, v0

    move-object v0, v4

    move-object v4, v3

    move v3, v8

    :cond_1
    :goto_2
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/b/a;

    invoke-direct {v0, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_3
    const v6, 0xf423f

    if-ge v2, v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "~"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rsub-int/lit8 v6, v6, 0x8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/b/a;

    invoke-direct {v0, v6, v5}, Lcom/estrongs/fs/impl/usb/fs/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_3
    return-object v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v3, v0

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move v3, v2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    move-object v4, v3

    move v3, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static a(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x24

    if-eq p0, v1, :cond_0

    const/16 v1, 0x25

    if-eq p0, v1, :cond_0

    const/16 v1, 0x27

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x40

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x60

    if-eq p0, v1, :cond_0

    const/16 v1, 0x21

    if-eq p0, v1, :cond_0

    const/16 v1, 0x28

    if-eq p0, v1, :cond_0

    const/16 v1, 0x29

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x26

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
