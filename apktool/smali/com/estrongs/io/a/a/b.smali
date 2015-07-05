.class public Lcom/estrongs/io/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/a/d;


# instance fields
.field c:I

.field d:Landroid/os/Bundle;

.field protected e:Lcom/estrongs/io/archive/d;

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/lang/Object;

.field j:I


# direct methods
.method public constructor <init>(Lcom/estrongs/io/archive/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/io/a/a/b;->c:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/a/a/b;->d:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->g:Z

    iput-boolean v1, p0, Lcom/estrongs/io/a/a/b;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/a/a/b;->i:Ljava/lang/Object;

    iput v1, p0, Lcom/estrongs/io/a/a/b;->j:I

    iput-object p1, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iput-wide p1, v0, Lcom/estrongs/io/archive/d;->f:J

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iput-object p1, v0, Lcom/estrongs/io/archive/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iget v1, p0, Lcom/estrongs/io/a/a/b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/io/a/a/b;->j:I

    iput v1, v0, Lcom/estrongs/io/archive/d;->g:I

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iput-object p1, v0, Lcom/estrongs/io/archive/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iput-wide p2, v0, Lcom/estrongs/io/archive/d;->c:J

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    iput p4, v0, Lcom/estrongs/io/archive/d;->d:I

    iget-object v0, p0, Lcom/estrongs/io/a/a/b;->e:Lcom/estrongs/io/archive/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/io/a/a/b;->h:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/a/a/b;->g:Z

    return-void
.end method
