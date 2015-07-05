.class Ljcifs/smb/Trans2GetDfsReferralResponse;
.super Ljcifs/smb/SmbComTransactionResponse;


# instance fields
.field flags:I

.field numReferrals:I

.field pathConsumed:I

.field referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 4

    invoke-static {p1, p2}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    :cond_0
    invoke-static {p1, v0}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    add-int/lit8 v1, v0, 0x4

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    new-array v0, v0, [Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    new-instance v3, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    invoke-direct {v3, p0}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;-><init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1, p3}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->readWireFormat([BII)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v1, p2

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2GetDfsReferralResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathConsumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numReferrals="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
