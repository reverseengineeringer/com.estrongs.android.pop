.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
.super Ljcifs/dcerpc/ndr/NdrObject;


# instance fields
.field public current_uses:I

.field public max_uses:I

.field public netname:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public permissions:I

.field public remark:Ljava/lang/String;

.field public sd_size:I

.field public security_descriptor:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    if-eqz v0, :cond_7

    iget-object v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    :cond_2
    if-eqz v4, :cond_6

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iget v2, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-nez v3, :cond_5

    if-ltz v1, :cond_3

    const v3, 0xffff

    if-le v1, v3, :cond_4

    :cond_3
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "invalid array conformance"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v3, v1, [B

    iput-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    :cond_5
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    move-object v0, p1

    goto :goto_0
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v0, :cond_4

    iget-object v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v2, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
