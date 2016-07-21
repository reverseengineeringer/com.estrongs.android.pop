.class public Lde/innosystec/unrar/rarfile/h;
.super Ljava/lang/Object;


# direct methods
.method public static a([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, p1}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    if-nez v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v1

    const/16 v0, 0x8

    move v5, v1

    move v1, v4

    move v4, v0

    :goto_1
    shr-int/lit8 v0, v5, 0x6

    packed-switch v0, :pswitch_data_0

    move v3, v1

    :cond_0
    :goto_2
    shl-int/lit8 v0, v5, 0x2

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v0, v4, -0x2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v0

    shl-int/lit8 v1, v6, 0x8

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_2
    invoke-static {p0, v1}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v0

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x2

    goto :goto_2

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v1}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v1

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v0}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v8

    and-int/lit8 v0, v1, 0x7f

    add-int/lit8 v0, v0, 0x2

    :goto_3
    if-lez v0, :cond_0

    array-length v1, p0

    if-ge v2, v1, :cond_0

    invoke-static {p0, v2}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v1

    add-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v6, 0x8

    add-int/2addr v1, v9

    int-to-char v1, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x2

    :goto_4
    if-lez v1, :cond_3

    array-length v3, p0

    if-ge v2, v3, :cond_3

    invoke-static {p0, v2}, Lde/innosystec/unrar/rarfile/h;->a([BI)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v3, v0

    goto :goto_2

    :cond_4
    move v4, v0

    move v5, v1

    move v1, v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
