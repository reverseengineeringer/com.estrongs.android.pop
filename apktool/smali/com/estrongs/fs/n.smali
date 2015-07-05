.class public Lcom/estrongs/fs/n;
.super Lcom/estrongs/fs/a;


# instance fields
.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;)V

    iput-object p3, p0, Lcom/estrongs/fs/n;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/m;)V

    iput-object p4, p0, Lcom/estrongs/fs/n;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    return-object v0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/n;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/n;->displayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/n;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/n;->displayName:Ljava/lang/String;

    return-void
.end method
