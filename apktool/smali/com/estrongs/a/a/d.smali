.class public Lcom/estrongs/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field public e:Z

.field public f:Z

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/a/a/d;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/a/a/d;->f:Z

    iput v1, p0, Lcom/estrongs/a/a/d;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
