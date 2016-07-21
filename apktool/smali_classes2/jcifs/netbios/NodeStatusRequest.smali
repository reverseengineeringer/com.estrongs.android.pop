.class Ljcifs/netbios/NodeStatusRequest;
.super Ljcifs/netbios/NameServicePacket;


# direct methods
.method constructor <init>(Ljcifs/netbios/Name;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    const/16 v0, 0x21

    iput v0, p0, Ljcifs/netbios/NodeStatusRequest;->questionType:I

    iput-boolean v1, p0, Ljcifs/netbios/NodeStatusRequest;->isRecurDesired:Z

    iput-boolean v1, p0, Ljcifs/netbios/NodeStatusRequest;->isBroadcast:Z

    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusRequest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 3

    iget-object v0, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    iget-object v1, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    const/4 v2, 0x0

    iput v2, v1, Ljcifs/netbios/Name;->hexCode:I

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NodeStatusRequest;->writeQuestionSectionWireFormat([BI)I

    move-result v1

    iget-object v2, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    iput v0, v2, Ljcifs/netbios/Name;->hexCode:I

    return v1
.end method

.method writeRDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
