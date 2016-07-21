.class public abstract Lcom/dianxinos/library/notify/network/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Exception;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/io/InputStream;

.field public h:Ljava/io/File;

.field public i:J

.field public j:J

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->c:Ljava/lang/Exception;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dianxinos/library/notify/network/s;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/s;->e:Ljava/lang/String;

    iget v0, p0, Lcom/dianxinos/library/notify/network/s;->d:I

    iput v0, p0, Lcom/dianxinos/library/notify/network/s;->f:I

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->g:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->h:Ljava/io/File;

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/s;->i:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/s;->j:J

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/s;->k:J

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/s;->m:Ljava/lang/String;

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/s;->n:J

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/s;->o:J

    return-void
.end method
