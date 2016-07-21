.class public Ljcifs/dcerpc/ndr/NdrBuffer;
.super Ljava/lang/Object;


# instance fields
.field public buf:[B

.field public deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

.field public index:I

.field public length:I

.field referent:I

.field referents:Ljava/util/HashMap;

.field public start:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method private getDceReferent(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    if-nez v0, :cond_1

    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    invoke-direct {v0}, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;-><init>()V

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    iput v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->obj:Ljava/lang/Object;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    return v0
.end method


# virtual methods
.method public advance(I)V
    .locals 3

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v1, v1, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v1, v2

    iput v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    :cond_0
    return-void
.end method

.method public align(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public align(IB)I
    .locals 4

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    move-result v1

    move v0, v1

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v3, v0

    aput-byte p2, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public dec_ndr_hyper()J
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v0

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-wide v0
.end method

.method public dec_ndr_long()I
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public dec_ndr_short()I
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v0

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public dec_ndr_small()I
    .locals 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public dec_ndr_string()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v2, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v3

    add-int/lit8 v2, v0, 0xc

    if-eqz v3, :cond_2

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v3, v0, 0x2

    if-ltz v3, :cond_0

    const v0, 0xffff

    if-le v3, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v3, "invalid array conformance"

    invoke-direct {v0, v3}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v2

    :goto_0
    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;
    .locals 3

    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput-object v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-object v0
.end method

.method public enc_ndr_hyper(J)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_long(I)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_referent(Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getDceReferent(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enc_ndr_short(I)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint16le(S[BI)I

    invoke-virtual {p0, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_small(I)V
    .locals 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_string(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v2, v3, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v6, v2, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v2, v3, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v0, v0, 0x4

    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    mul-int/lit8 v5, v1, 0x2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v1, v2, 0x1

    aput-byte v6, v0, v2

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    return-object v0
.end method

.method public getCapacity()I
    .locals 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return v0
.end method

.method public getTailSpace()I
    .locals 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readOctetArray([BII)V
    .locals 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return-void
.end method

.method public setLength(I)V
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeOctetArray([BII)V
    .locals 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method
