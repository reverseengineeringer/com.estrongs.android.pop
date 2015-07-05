.class public Ljcifs/smb/SmbShareInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/FileEntry;


# instance fields
.field protected netName:Ljava/lang/String;

.field protected remark:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    iput-object p3, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljcifs/smb/SmbShareInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/SmbShareInfo;

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributes()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbShareInfo;->type:I

    const v1, 0xffff

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbShareInfo[netName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

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
