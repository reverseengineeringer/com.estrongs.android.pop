.class Ljcifs/dcerpc/msrpc/LsarSidArrayX;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method constructor <init>([Ljcifs/smb/SID;)V
    .locals 3

    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    array-length v0, p1

    iput v0, p0, Ljcifs/dcerpc/msrpc/LsarSidArrayX;->num_sids:I

    array-length v0, p1

    new-array v0, v0, [Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/LsarSidArrayX;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/LsarSidArrayX;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    new-instance v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    invoke-direct {v2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/LsarSidArrayX;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iput-object v2, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
