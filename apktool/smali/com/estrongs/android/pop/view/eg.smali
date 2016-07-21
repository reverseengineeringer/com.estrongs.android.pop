.class public Lcom/estrongs/android/pop/view/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/android/pop/app/f/w;

.field private f:Lcom/estrongs/android/pop/app/f/s;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/eg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/eg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/eg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eg;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/eg;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/eg;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    return-void
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/f/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/w;-><init>(JJ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/eg;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/view/eg;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/estrongs/android/pop/view/eg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/eg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eg;->e:Lcom/estrongs/android/pop/app/f/w;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/app/f/w;->a(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/app/f/s;->a(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/f/s;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/f/s;-><init>(JJ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/eg;->f:Lcom/estrongs/android/pop/app/f/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eg;->g:Z

    goto :goto_0
.end method
