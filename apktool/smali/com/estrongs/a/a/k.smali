.class public Lcom/estrongs/a/a/k;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Lcom/estrongs/fs/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/a/a/k;->g:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/a/a/k;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/a/a/k;->a:Lcom/estrongs/fs/h;

    :cond_0
    return-void
.end method
