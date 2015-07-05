.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/i;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

.field private b:Ljava/lang/String;

.field private c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

.field private d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private final e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/h;
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/h;

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->f()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->f()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public e()Lcom/estrongs/fs/impl/usb/fs/ntfs/j;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/j;

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/x;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/l;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    goto :goto_0
.end method
