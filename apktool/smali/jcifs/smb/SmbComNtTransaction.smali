.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field function:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x45

    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method writeParameterWordsWireFormat([BI)I
    .locals 7

    const/16 v6, -0x5f

    const/4 v1, 0x0

    iget-byte v0, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-eq v0, v6, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxSetupCount:B

    aput-byte v2, p1, p2

    :goto_0
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->totalParameterCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->totalDataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-eq v2, v6, :cond_0

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxParameterCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxDataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_0
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v2, v6, :cond_1

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterDisplacement:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_1
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v2, v6, :cond_5

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataDisplacement:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :goto_3
    sub-int/2addr v0, p2

    return v0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_0

    :cond_3
    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->parameterOffset:I

    goto :goto_1

    :cond_4
    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->dataOffset:I

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/SmbComNtTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeSetupWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method
