.class public Lcom/estrongs/fs/impl/c/e;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/bluetooth/parser/OBEXElement;


# direct methods
.method public constructor <init>(Lcom/estrongs/bluetooth/parser/OBEXElement;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/c/e;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/c/e;->canWrite()Z

    move-result v0

    return v0
.end method

.method protected canRead()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected canWrite()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v2}, Lcom/estrongs/bluetooth/parser/OBEXElement;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v2}, Lcom/estrongs/bluetooth/parser/OBEXElement;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/c/e;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->f()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->f()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/e;->a:Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->c()J

    move-result-wide v0

    return-wide v0
.end method
