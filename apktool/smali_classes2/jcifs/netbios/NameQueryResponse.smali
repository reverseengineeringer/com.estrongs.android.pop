.class Ljcifs/netbios/NameQueryResponse;
.super Ljcifs/netbios/NameServicePacket;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameQueryResponse;->recordName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v1, :cond_0

    iget v1, p0, Ljcifs/netbios/NameQueryResponse;->opCode:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x60

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Ljcifs/netbios/NameQueryResponse;->readInt4([BI)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v4, p0, Ljcifs/netbios/NameQueryResponse;->addrIndex:I

    new-instance v5, Ljcifs/netbios/NbtAddress;

    iget-object v6, p0, Ljcifs/netbios/NameQueryResponse;->recordName:Ljcifs/netbios/Name;

    invoke-direct {v5, v6, v2, v0, v1}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    aput-object v5, v3, v4

    :goto_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v1, p0, Ljcifs/netbios/NameQueryResponse;->addrIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameQueryResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",addrEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
