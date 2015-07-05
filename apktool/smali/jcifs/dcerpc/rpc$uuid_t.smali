.class public Ljcifs/dcerpc/rpc$uuid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;


# instance fields
.field public clock_seq_hi_and_reserved:B

.field public clock_seq_low:B

.field public node:[B

.field public time_hi_and_version:S

.field public time_low:I

.field public time_mid:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v1, :cond_0

    new-array v1, v4, [B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    :cond_0
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
