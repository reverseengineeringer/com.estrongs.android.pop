.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

.field b:I

.field c:I

.field final synthetic d:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .locals 3

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-array v0, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    if-eq v2, p1, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d()J

    move-result-wide v4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :goto_1
    if-eqz v1, :cond_3

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {v0, p0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v3, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestQueue: unknown request id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v1, v0

    return-object v0
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    return-void
.end method

.method a(IJI)V
    .locals 4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput-wide p2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v1, v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    return-void
.end method

.method a(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .locals 7

    const/4 v1, 0x0

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    iget v4, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->d:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/ChannelSftp;J)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    iget v6, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v5, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    return v0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, v0

    return v0
.end method

.method d()J
    .locals 6

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    goto :goto_1
.end method
