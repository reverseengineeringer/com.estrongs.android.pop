.class Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
.super Ljava/lang/Object;


# instance fields
.field private altPath:Ljava/lang/String;

.field private altPathOffset:I

.field private flags:I

.field node:Ljava/lang/String;

.field private nodeOffset:I

.field path:Ljava/lang/String;

.field private pathOffset:I

.field private proximity:I

.field private serverType:I

.field private size:I

.field final synthetic this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

.field ttl:I

.field private version:I


# direct methods
.method constructor <init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method readWireFormat([BII)I
    .locals 6

    const/4 v4, 0x3

    const v5, 0x8000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " referral not supported. Please report this to jcifs at samba dot org."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-ne v3, v4, :cond_4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    add-int v4, p2, v0

    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v0, v0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v4, p3, v0}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    add-int/2addr v3, p2

    iget-object v4, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v0, p1, v3, p3, v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    :cond_1
    :goto_2
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget-object v4, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v4, v4, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v3, p1, v0, p3, v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referral[version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",proximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ttl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nodeOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

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
