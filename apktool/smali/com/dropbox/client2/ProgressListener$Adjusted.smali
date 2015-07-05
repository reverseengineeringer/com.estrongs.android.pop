.class public final Lcom/dropbox/client2/ProgressListener$Adjusted;
.super Lcom/dropbox/client2/ProgressListener;


# instance fields
.field private final adjustedTotal:J

.field private final bytesOffset:J

.field private final relay:Lcom/dropbox/client2/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/ProgressListener;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/client2/ProgressListener;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->relay:Lcom/dropbox/client2/ProgressListener;

    iput-wide p2, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->bytesOffset:J

    iput-wide p4, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->adjustedTotal:J

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->relay:Lcom/dropbox/client2/ProgressListener;

    iget-wide v2, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->bytesOffset:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->adjustedTotal:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    return-void
.end method

.method public progressInterval()J
    .locals 2

    iget-object v0, p0, Lcom/dropbox/client2/ProgressListener$Adjusted;->relay:Lcom/dropbox/client2/ProgressListener;

    invoke-virtual {v0}, Lcom/dropbox/client2/ProgressListener;->progressInterval()J

    move-result-wide v0

    return-wide v0
.end method
