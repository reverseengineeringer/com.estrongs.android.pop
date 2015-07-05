.class public Lcom/estrongs/fs/b/u;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/estrongs/fs/h;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;Ljava/lang/String;J)V
    .locals 7

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/b/u;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/h;Ljava/lang/String;JZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/u;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/u;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/u;->e:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    iput-object p2, p0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/estrongs/fs/b/u;->c:J

    iput-boolean p5, p0, Lcom/estrongs/fs/b/u;->d:Z

    return-void
.end method
