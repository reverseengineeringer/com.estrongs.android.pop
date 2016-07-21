.class public Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
.super Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v2, 0xc8

    const v3, 0xffff

    new-instance v4, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    new-instance v5, Ljcifs/dcerpc/ndr/NdrLong;

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrLong;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;-><init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget v1, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->level:I

    iput v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    new-instance v1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;-><init>()V

    iput-object v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    iput v6, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->flags:I

    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    iget v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    new-array v3, v1, [Ljcifs/smb/SmbShareInfo;

    move v1, v2

    :goto_0
    iget v4, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    if-ge v1, v4, :cond_0

    new-instance v4, Ljcifs/smb/SmbShareInfo;

    iget-object v5, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    aget-object v5, v5, v1

    iget-object v5, v5, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Ljcifs/smb/SmbShareInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
