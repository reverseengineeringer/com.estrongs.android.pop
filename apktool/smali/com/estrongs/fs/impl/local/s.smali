.class public Lcom/estrongs/fs/impl/local/s;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Process;

.field public b:Ljava/io/BufferedWriter;

.field public c:Ljava/io/BufferedReader;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/impl/local/s;->a:Ljava/lang/Process;

    iput-object v1, p0, Lcom/estrongs/fs/impl/local/s;->b:Ljava/io/BufferedWriter;

    iput-object v1, p0, Lcom/estrongs/fs/impl/local/s;->c:Ljava/io/BufferedReader;

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/s;->d:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/s;->e:Z

    iput v0, p0, Lcom/estrongs/fs/impl/local/s;->f:I

    return-void
.end method
