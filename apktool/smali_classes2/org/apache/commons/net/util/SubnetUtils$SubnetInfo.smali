.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method private address()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->address:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$2(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private broadcast()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$3(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private high()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInRange(I)Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private low()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private netmask()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->netmask:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$0(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private network()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->network:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$1(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$4(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCount()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v3

    if-le v1, v3, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v4, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v4, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v4

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v3

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v3, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v4

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v3, v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v3

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$7(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v2

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I
    invoke-static {v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$5(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$6(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$4(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CIDR Signature:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Netmask: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Network:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Broadcast:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "First Address:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Last Address:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# Addresses:\t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
