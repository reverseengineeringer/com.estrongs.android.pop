.class public Lcom/estrongs/fs/c;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COMM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FILESYSTEM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NAMED_PIPE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PRINTER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SERVER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHARE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WORKGROUP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/estrongs/fs/c;->e:J

    iput v0, p0, Lcom/estrongs/fs/c;->f:I

    iput v0, p0, Lcom/estrongs/fs/c;->g:I

    iput-wide v2, p0, Lcom/estrongs/fs/c;->h:J

    iput-wide v2, p0, Lcom/estrongs/fs/c;->i:J

    iput-wide v2, p0, Lcom/estrongs/fs/c;->j:J

    iput-boolean v0, p0, Lcom/estrongs/fs/c;->n:Z

    iput-object v1, p0, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/fs/c;->q:I

    iput-object p1, p0, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/estrongs/fs/c;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_6
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
