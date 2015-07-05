.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;
.super Ljcifs/dcerpc/ndr/NdrObject;


# instance fields
.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    :cond_0
    iget-object v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    return-void
.end method
