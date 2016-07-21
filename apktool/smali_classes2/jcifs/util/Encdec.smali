.class public Ljcifs/util/Encdec;
.super Ljava/lang/Object;


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I = 0x6

.field public static final TIME_1601_NANOS_64LE:I = 0x5

.field public static final TIME_1904_SEC_32BE:I = 0x3

.field public static final TIME_1904_SEC_32LE:I = 0x4

.field public static final TIME_1970_MILLIS_64BE:I = 0x7

.field public static final TIME_1970_MILLIS_64LE:I = 0x8

.field public static final TIME_1970_SEC_32BE:I = 0x1

.field public static final TIME_1970_SEC_32LE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .locals 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dec_doublele([BI)D
    .locals 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dec_floatbe([BI)F
    .locals 1

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static dec_floatle([BI)F
    .locals 1

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .locals 6

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported time encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/32 v4, 0x7c25b080

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/32 v4, 0x7c25b080

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    const-wide v4, 0xa9730b66800L

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    const-wide v4, 0xa9730b66800L

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static dec_ucs2le([BII[C)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    int-to-char v2, v2

    aput-char v2, p3, v0

    aget-char v2, p3, v0

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public static dec_uint16be([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static dec_uint16le([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static dec_uint32be([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static dec_uint32le([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static dec_uint64be([BI)J
    .locals 6

    const-wide v4, 0xffffffffL

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static dec_uint64le([BI)J
    .locals 6

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0x80

    sub-int v0, p2, p1

    new-array v4, v0, [C

    move v2, v3

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    if-ge v1, v7, :cond_1

    int-to-char v1, v1

    aput-char v1, v4, v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move p1, v0

    goto :goto_0

    :cond_1
    and-int/lit16 v5, v1, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_5

    sub-int v5, p2, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    int-to-char v1, v1

    aput-char v1, v4, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-char v5, v4, v2

    and-int/lit8 v6, v0, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v7, :cond_4

    aget-char v0, v4, v2

    if-ge v0, v7, :cond_9

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    and-int/lit16 v5, v1, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_8

    sub-int v5, p2, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    int-to-char v1, v1

    aput-char v1, v4, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v5, v0, 0xc0

    if-eq v5, v7, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    aget-char v5, v4, v2

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v5

    int-to-char v0, v0

    aput-char v0, v4, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-char v5, v4, v2

    and-int/lit8 v6, v1, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v7, :cond_7

    aget-char v1, v4, v2

    const/16 v5, 0x800

    if-ge v1, v5, :cond_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public static enc_doublebe(D[BI)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v0

    return v0
.end method

.method public static enc_doublele(D[BI)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v0

    return v0
.end method

.method public static enc_floatbe(F[BI)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v0

    return v0
.end method

.method public static enc_floatle(F[BI)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v0

    return v0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .locals 12

    const-wide v10, 0xa9730b66800L

    const-wide/32 v8, 0x7c25b080

    const-wide/16 v6, 0x2710

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x3e8

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported time encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    add-long/2addr v0, v8

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    add-long/2addr v0, v8

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v10

    mul-long/2addr v0, v6

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v10

    mul-long/2addr v0, v6

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static enc_uint16be(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static enc_uint16le(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static enc_uint32be(I[BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static enc_uint32le(I[BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static enc_uint64be(J[BI)I
    .locals 4

    const-wide v2, 0xffffffffL

    and-long v0, p0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 v0, 0x8

    return v0
.end method

.method public static enc_uint64le(J[BI)I
    .locals 4

    const-wide v2, 0xffffffffL

    and-long v0, p0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v0, 0x8

    return v0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    move v2, p2

    :goto_0
    if-ge v2, p3, :cond_1

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v0, 0x1

    if-lt v4, v0, :cond_0

    const/16 v0, 0x7f

    if-gt v4, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7ff

    if-le v4, v0, :cond_3

    sub-int v0, p3, v2

    const/4 v5, 0x3

    if-ge v0, v5, :cond_2

    :cond_1
    sub-int v0, v2, p2

    return v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    goto :goto_1

    :cond_3
    sub-int v0, p3, v2

    const/4 v5, 0x2

    if-lt v0, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v2, v4, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    goto :goto_1
.end method
