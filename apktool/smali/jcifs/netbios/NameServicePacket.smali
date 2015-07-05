.class abstract Ljcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;


# static fields
.field static final A:I = 0x1

.field static final ACT_ERR:I = 0x6

.field static final ADDITIONAL_OFFSET:I = 0xa

.field static final ANSWER_OFFSET:I = 0x6

.field static final AUTHORITY_OFFSET:I = 0x8

.field static final CFT_ERR:I = 0x7

.field static final FMT_ERR:I = 0x1

.field static final HEADER_LENGTH:I = 0xc

.field static final IMP_ERR:I = 0x4

.field static final IN:I = 0x1

.field static final NB:I = 0x20

.field static final NBSTAT:I = 0x21

.field static final NBSTAT_IN:I = 0x210001

.field static final NB_IN:I = 0x200001

.field static final NS:I = 0x2

.field static final NULL:I = 0xa

.field static final OPCODE_OFFSET:I = 0x2

.field static final QUERY:I = 0x0

.field static final QUESTION_OFFSET:I = 0x4

.field static final RFS_ERR:I = 0x5

.field static final SRV_ERR:I = 0x2

.field static final WACK:I = 0x7


# instance fields
.field additionalCount:I

.field addr:Ljava/net/InetAddress;

.field addrEntry:[Ljcifs/netbios/NbtAddress;

.field addrIndex:I

.field answerCount:I

.field authorityCount:I

.field isAuthAnswer:Z

.field isBroadcast:Z

.field isRecurAvailable:Z

.field isRecurDesired:Z

.field isResponse:Z

.field isTruncated:Z

.field nameTrnId:I

.field opCode:I

.field questionClass:I

.field questionCount:I

.field questionName:Ljcifs/netbios/Name;

.field questionType:I

.field rDataLength:I

.field received:Z

.field recordClass:I

.field recordName:Ljcifs/netbios/Name;

.field recordType:I

.field resultCode:I

.field ttl:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    return-void
.end method

.method static readInt2([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readNameTrnId([BI)I
    .locals 1

    invoke-static {p0, p1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    return v0
.end method

.method static writeInt2(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method static writeInt4(I[BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method abstract readBodyWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    const/16 v0, 0xc

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method readQuestionSectionWireFormat([BI)I
    .locals 2

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method abstract readRDataWireFormat([BI)I
.end method

.method readResourceRecordWireFormat([BI)I
    .locals 3

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    add-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    div-int/lit8 v1, v1, 0x6

    new-array v1, v1, [Ljcifs/netbios/NbtAddress;

    iput-object v1, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method readWireFormat([BI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x4

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-static {v2, v7}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v2, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    sparse-switch v2, :sswitch_data_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v3, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nameTrnId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isResponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",opCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isAuthAnswer="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isTruncated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isRecurAvailable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isRecurDesired="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isBroadcast="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",resultCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",answerCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",authorityCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",additionalCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",questionClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    if-ne v0, v7, :cond_0

    const-string v0, "IN"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    if-ne v0, v7, :cond_1

    const-string v0, "IN"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rDataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3

    :sswitch_0
    const-string v0, "QUERY"

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "WACK"

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "FMT_ERR"

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "SRV_ERR"

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "IMP_ERR"

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "RFS_ERR"

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "ACT_ERR"

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "CFT_ERR"

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "NB"

    goto/16 :goto_2

    :pswitch_8
    const-string v1, "NBSTAT"

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "A"

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "NS"

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "NULL"

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "NB"

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "NBSTAT"

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v4, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v2, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xa -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method abstract writeBodyWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 5

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v3, p2, 0x2

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x78

    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_2
    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    add-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    if-eqz v3, :cond_5

    :goto_4
    iget-boolean v3, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    :cond_0
    add-int/2addr v1, v2

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v1, p2, 0x6

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    const/16 v0, 0xc

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method writeQuestionSectionWireFormat([BI)I
    .locals 2

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method abstract writeRDataWireFormat([BI)I
.end method

.method writeResourceRecordWireFormat([BI)I
    .locals 3

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    const/16 v0, -0x40

    aput-byte v0, p1, p2

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xc

    aput-byte v2, p1, v1

    :goto_0
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method writeWireFormat([BI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method
