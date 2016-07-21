.class Lcom/dianxinos/library/notify/download/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/FileOutputStream;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:J

.field public l:J

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Lcom/dianxinos/library/notify/download/DownloadInfo;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/download/l;->e:Z

    iput v2, p0, Lcom/dianxinos/library/notify/download/l;->f:I

    iput v2, p0, Lcom/dianxinos/library/notify/download/l;->g:I

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/download/l;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dianxinos/library/notify/download/l;->k:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/download/l;->l:J

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/download/l;->n:Z

    iput-wide v4, p0, Lcom/dianxinos/library/notify/download/l;->o:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/download/l;->p:J

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/download/DownloadRunnable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/l;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/l;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCacheFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/l;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCompleteFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/download/l;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/dianxinos/library/notify/download/l;->k:J

    iget-wide v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/dianxinos/library/notify/download/l;->l:J

    return-void
.end method
