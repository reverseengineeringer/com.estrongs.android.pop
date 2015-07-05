.class public Ljcifs/smb/BufferCache;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_BUFFERS:I

.field static cache:[Ljava/lang/Object;

.field private static freeBuffers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    sget v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer()[B
    .locals 5

    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v1, v0, :cond_1

    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    check-cast v0, [B

    sget-object v3, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    sget v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljcifs/smb/BufferCache;->freeBuffers:I

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v0, 0xffff

    new-array v0, v0, [B

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V
    .locals 2

    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    iput-object v0, p1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseBuffer([B)V
    .locals 3

    sget-object v1, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget v2, Ljcifs/smb/BufferCache;->MAX_BUFFERS:I

    if-ge v0, v2, :cond_1

    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, Ljcifs/smb/BufferCache;->cache:[Ljava/lang/Object;

    aput-object p0, v2, v0

    sget v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljcifs/smb/BufferCache;->freeBuffers:I

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
