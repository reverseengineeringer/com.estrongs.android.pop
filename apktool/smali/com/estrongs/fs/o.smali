.class public Lcom/estrongs/fs/o;
.super Lcom/estrongs/fs/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/scanner/f;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "Pictures"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/scanner/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/pictures/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
