.class Lcom/estrongs/android/pop/app/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/zeroconf/u;

.field final synthetic b:Lcom/estrongs/android/pop/app/f/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/d;Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/e;->b:Lcom/estrongs/android/pop/app/f/d;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/u;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/e;->b:Lcom/estrongs/android/pop/app/f/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/d;->a:Lcom/estrongs/android/pop/app/f/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/c;->a(Lcom/estrongs/android/pop/app/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/w;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webdav://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_7

    move-object v0, v1

    move v1, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget v1, v1, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/u;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/e;->b:Lcom/estrongs/android/pop/app/f/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/f/d;->a:Lcom/estrongs/android/pop/app/f/c;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    invoke-static {v1, v0, v3, v2}, Lcom/estrongs/android/pop/app/f/c;->a(Lcom/estrongs/android/pop/app/f/c;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/w;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftp://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_7

    move-object v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->c:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/zeroconf/w;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget-object v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/e;->a:Lcom/estrongs/android/pop/zeroconf/u;

    iget v3, v3, Lcom/estrongs/android/pop/zeroconf/u;->d:I

    const/16 v4, 0x1bd

    if-eq v3, v4, :cond_7

    move-object v0, v1

    move v1, v2

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move v5, v0

    move-object v0, v1

    move v1, v5

    goto/16 :goto_0

    :cond_8
    move v5, v0

    move-object v0, v1

    move v1, v5

    goto/16 :goto_0
.end method
