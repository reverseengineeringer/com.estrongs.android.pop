.class public Lcom/estrongs/fs/b/bl;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/net/Socket;

.field public k:Z

.field public l:[B

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/fs/b/bl;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/fs/b/bl;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/fs/b/bl;->j:Ljava/net/Socket;

    iput-object p3, p0, Lcom/estrongs/fs/b/bl;->i:Ljava/lang/String;

    iput-wide p5, p0, Lcom/estrongs/fs/b/bl;->e:J

    return-void
.end method
