.class Ljcifs/smb/Dfs$CacheEntry;
.super Ljava/lang/Object;


# instance fields
.field expiration:J

.field map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-wide p1, Ljcifs/smb/Dfs;->TTL:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    return-void
.end method
