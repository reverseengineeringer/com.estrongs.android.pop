.class abstract Ljcifs/smb/SmbComTransaction;
.super Ljcifs/smb/ServerMessageBlock;

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DEFAULT_MAX_DATA_COUNT:I

.field private static final DISCONNECT_TID:I = 0x1

.field static final NET_SERVER_ENUM2:I = 0x68

.field static final NET_SERVER_ENUM3:I = 0xd7

.field static final NET_SHARE_ENUM:I = 0x0

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final PADDING_SIZE:I = 0x2

.field private static final PRIMARY_SETUP_OFFSET:I = 0x3d

.field private static final SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final TRANS2_FIND_FIRST2:B = 0x1t

.field static final TRANS2_FIND_NEXT2:B = 0x2t

.field static final TRANS2_GET_DFS_REFERRAL:B = 0x10t

.field static final TRANS2_QUERY_FS_INFORMATION:B = 0x3t

.field static final TRANS2_QUERY_PATH_INFORMATION:B = 0x5t

.field static final TRANS2_SET_FILE_INFORMATION:B = 0x8t

.field static final TRANSACTION_BUF_SIZE:I = 0xffff

.field static final TRANS_CALL_NAMED_PIPE:B = 0x54t

.field static final TRANS_PEEK_NAMED_PIPE:B = 0x23t

.field static final TRANS_TRANSACT_NAMED_PIPE:B = 0x26t

.field static final TRANS_WAIT_NAMED_PIPE:B = 0x53t


# instance fields
.field private bufDataOffset:I

.field private bufParameterOffset:I

.field protected dataCount:I

.field protected dataDisplacement:I

.field protected dataOffset:I

.field private fid:I

.field private flags:I

.field private hasMore:Z

.field private isPrimary:Z

.field maxBufferSize:I

.field maxDataCount:I

.field maxParameterCount:I

.field maxSetupCount:B

.field name:Ljava/lang/String;

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field protected primarySetupOffset:I

.field protected secondaryParameterOffset:I

.field setupCount:I

.field subCommand:B

.field timeout:I

.field totalDataCount:I

.field totalParameterCount:I

.field txn_buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    sget v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 v0, 0x3d

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    const/16 v3, -0x60

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-eq v0, v3, :cond_2

    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {p0, v2, v3}, Ljcifs/smb/SmbComTransaction;->stringWireLength(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_0
    :goto_0
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int v2, v0, v2

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    invoke-virtual {p0, v0, v3}, Ljcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    :goto_3
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    if-lt v0, v2, :cond_1

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    :cond_1
    return-object p0

    :cond_2
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v0, v3, :cond_0

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_0

    :cond_3
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-eq v0, v3, :cond_7

    const/16 v0, 0x26

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    :goto_4
    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_6
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int v2, v0, v2

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    sub-int v0, v2, v0

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    goto/16 :goto_3

    :cond_7
    const/16 v0, -0x5f

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    goto :goto_4

    :cond_8
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_6
.end method

.method readBytesWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract readDataWireFormat([BII)I
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract readParametersWireFormat([BII)I
.end method

.method abstract readSetupWireFormat([BII)I
.end method

.method reset()V
    .locals 1

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    return-void
.end method

.method reset(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbComTransaction;->writeString(Ljava/lang/String;[BI)I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    if-lez v2, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v2

    :cond_1
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-lez v1, :cond_3

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v2

    :cond_3
    sub-int/2addr v0, p2

    return v0

    :cond_4
    move v0, p2

    goto :goto_0
.end method

.method abstract writeDataWireFormat([BI)I
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 7

    const/16 v6, 0x26

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-eq v2, v6, :cond_0

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    iget-byte v3, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :cond_0
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v2, v6, :cond_1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v2, v0, 0x2

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v2, v6, :cond_3

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_1
    sub-int/2addr v0, p2

    return v0

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method abstract writeParametersWireFormat([BI)I
.end method

.method abstract writeSetupWireFormat([BI)I
.end method
