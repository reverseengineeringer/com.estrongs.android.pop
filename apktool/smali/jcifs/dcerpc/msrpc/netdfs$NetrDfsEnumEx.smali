.class public Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.super Ljcifs/dcerpc/DcerpcMessage;


# instance fields
.field public dfs_name:Ljava/lang/String;

.field public info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

.field public level:I

.field public prefmaxlen:I

.field public retval:I

.field public totalentries:Ljcifs/dcerpc/ndr/NdrLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    iput p2, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    iput p3, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    iput-object p4, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iput-object p5, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrLong;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Ljcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrLong;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method
