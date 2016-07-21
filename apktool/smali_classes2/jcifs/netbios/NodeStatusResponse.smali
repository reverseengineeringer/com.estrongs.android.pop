.class Ljcifs/netbios/NodeStatusResponse;
.super Ljcifs/netbios/NameServicePacket;


# instance fields
.field addressArray:[Ljcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Ljcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method constructor <init>(Ljcifs/netbios/NbtAddress;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->recordName:Ljcifs/netbios/Name;

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    return-void
.end method

.method private readNodeNameArray([BI)I
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v1, v1, [Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v14, v1, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v1, 0x0

    move v12, v1

    move/from16 v13, p2

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-ge v12, v1, :cond_9

    add-int/lit8 v1, v13, 0xe

    :goto_1
    aget-byte v2, p1, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v13, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v10, v1, 0xff

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x60

    shr-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v8, 0x1

    :goto_5
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v9, 0x1

    :goto_6
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v1, v1, Ljcifs/netbios/Name;->hexCode:I

    if-ne v1, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v2, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v1, v1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v2, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance v2, Ljcifs/netbios/Name;

    invoke-direct {v2, v3, v10, v14}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v4, v1, Ljcifs/netbios/NbtAddress;->groupName:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput v5, v1, Ljcifs/netbios/NbtAddress;->nodeType:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v6, v1, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v7, v1, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v8, v1, Ljcifs/netbios/NbtAddress;->isActive:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v9, v1, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v2, v1, Ljcifs/netbios/NbtAddress;->macAddress:[B

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    aput-object v3, v2, v12

    :goto_7
    add-int/lit8 v3, v13, 0x12

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v11, v1

    move v13, v3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    new-instance v1, Ljcifs/netbios/NbtAddress;

    new-instance v2, Ljcifs/netbios/Name;

    invoke-direct {v2, v3, v10, v14}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget v3, v3, Ljcifs/netbios/NbtAddress;->address:I

    move-object/from16 v0, p0

    iget-object v10, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    invoke-direct/range {v1 .. v10}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    aput-object v1, v15, v12
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v11

    goto :goto_7

    :catch_0
    move-exception v1

    :cond_9
    sub-int v1, v13, p2

    return v1
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NodeStatusResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 6

    const/4 v5, 0x0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    iget v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    mul-int/lit8 v0, v0, 0x12

    iget v1, p0, Ljcifs/netbios/NodeStatusResponse;->rDataLength:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    add-int/2addr v0, v2

    iget-object v3, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    const/4 v4, 0x6

    invoke-static {p1, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v2}, Ljcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    move-result v0

    add-int/2addr v0, v2

    new-array v2, v1, [B

    iput-object v2, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    iget-object v2, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    invoke-static {p1, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusResponse["

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
