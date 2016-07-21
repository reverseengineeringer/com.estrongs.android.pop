.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.super Ljcifs/dcerpc/DcerpcMessage;


# instance fields
.field public count:I

.field public domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public level:S

.field public names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

.field public retval:I

.field public sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    iput-object p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iput-object p4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iput-short p5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    iput p6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
