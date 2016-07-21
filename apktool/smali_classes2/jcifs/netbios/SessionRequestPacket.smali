.class public Ljcifs/netbios/SessionRequestPacket;
.super Ljcifs/netbios/SessionServicePacket;


# instance fields
.field private calledName:Ljcifs/netbios/Name;

.field private callingName:Ljcifs/netbios/Name;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, Ljcifs/netbios/SessionRequestPacket;->type:I

    iput-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    iput-object p2, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 2

    iget v0, p0, Ljcifs/netbios/SessionRequestPacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Ljcifs/netbios/SessionRequestPacket;->length:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid session request wire format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p2, p3}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p2, v0}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    return v0
.end method

.method writeTrailerWireFormat([BI)I
    .locals 2

    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p1, v0}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method
