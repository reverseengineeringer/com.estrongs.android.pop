.class public Ljcifs/dcerpc/rpc$sid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;


# instance fields
.field public identifier_authority:[B

.field public revision:B

.field public sub_authority:[I

.field public sub_authority_count:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    if-nez v4, :cond_0

    new-array v4, v7, [B

    iput-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    :cond_0
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v4

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    invoke-virtual {v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    if-nez v1, :cond_4

    if-ltz v2, :cond_2

    const v1, 0xffff

    if-le v2, v1, :cond_3

    :cond_2
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "invalid array conformance"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v1, v2, [I

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    :cond_4
    invoke-virtual {v4, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v1

    :goto_1
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v4

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v5, v5, v1

    invoke-virtual {v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
