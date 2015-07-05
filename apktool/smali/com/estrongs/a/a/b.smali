.class public Lcom/estrongs/a/a/b;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/a/a/b;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/estrongs/a/a/b;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lt v0, v1, :cond_2

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    :cond_0
    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    :cond_1
    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/estrongs/a/a/b;->c:I

    :cond_2
    return-void
.end method
