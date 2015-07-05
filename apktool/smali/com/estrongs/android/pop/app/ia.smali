.class Lcom/estrongs/android/pop/app/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/hz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/hz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ia;->b:Lcom/estrongs/android/pop/app/hz;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/ia;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/ia;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->j(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
