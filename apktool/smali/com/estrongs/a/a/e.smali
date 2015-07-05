.class public Lcom/estrongs/a/a/e;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/a/e;->b:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/estrongs/a/a/e;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    :cond_0
    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/a/a/e;->b:Z

    :cond_1
    return-void
.end method
