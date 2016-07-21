.class Lcom/estrongs/android/pop/app/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/zeroconf/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/d;->a:Lcom/estrongs/android/pop/app/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/d;->a:Lcom/estrongs/android/pop/app/f/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/c;->a(Lcom/estrongs/android/pop/app/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++add service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/f/e;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/f/e;-><init>(Lcom/estrongs/android/pop/app/f/d;Lcom/estrongs/android/pop/zeroconf/u;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/d;->a:Lcom/estrongs/android/pop/app/f/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/c;->a(Lcom/estrongs/android/pop/app/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------delete service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/zeroconf/u;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
