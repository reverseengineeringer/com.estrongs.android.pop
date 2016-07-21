.class Ljcifs/netbios/SessionRetargetResponsePacket;
.super Ljcifs/netbios/SessionServicePacket;


# instance fields
.field private retargetAddress:Ljcifs/netbios/NbtAddress;

.field private retargetPort:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x84

    iput v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->type:I

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected EOF reading netbios retarget session response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2, p3}, Ljcifs/netbios/SessionRetargetResponsePacket;->readInt4([BI)I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    new-instance v2, Ljcifs/netbios/NbtAddress;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v4, v4}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    iput-object v2, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetAddress:Ljcifs/netbios/NbtAddress;

    invoke-static {p2, v1}, Ljcifs/netbios/SessionRetargetResponsePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetPort:I

    iget v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    return v0
.end method

.method writeTrailerWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
