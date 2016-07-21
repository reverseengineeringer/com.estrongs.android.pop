.class public Lde/innosystec/unrar/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v8, 0x3a

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-gez v1, :cond_3

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v2, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    aget-char v2, v5, v0

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    aput-char v2, v5, v0

    if-ne v2, v8, :cond_4

    aput-char v7, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    if-gez v0, :cond_5

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {v2, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    const-string v0, "r00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    new-array v3, v3, [C

    invoke-virtual {p0, v0, v1, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_5
    aget-char v1, v3, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    aput-char v1, v3, v0

    if-ne v1, v8, :cond_9

    aput-char v7, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lde/innosystec/unrar/a;Lde/innosystec/unrar/unpack/a;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->r()B

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->m()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/a;->a()J

    move-result-wide v4

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->m()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Data Bad CRC"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/a;->f()Lde/innosystec/unrar/rarfile/k;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/k;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lde/innosystec/unrar/a;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lde/innosystec/unrar/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->e()Lde/innosystec/unrar/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Lde/innosystec/unrar/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/a;->a(Ljava/io/File;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/a;->a(Lde/innosystec/unrar/rarfile/g;)V

    move v1, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x31

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lde/innosystec/unrar/e;->a(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_2

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [C

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    :goto_3
    array-length v3, v6

    if-ge v0, v3, :cond_3

    const/16 v3, 0x30

    aput-char v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    if-gez v1, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aput-char v7, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_6

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v0, "rar"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
