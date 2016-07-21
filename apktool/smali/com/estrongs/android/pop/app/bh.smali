.class public Lcom/estrongs/android/pop/app/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bg;

.field private b:Lcom/estrongs/android/pop/app/bm;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/bg;Lcom/estrongs/android/pop/app/bm;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bh;->a:Lcom/estrongs/android/pop/app/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bh;->b:Lcom/estrongs/android/pop/app/bm;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/bh;->b:Lcom/estrongs/android/pop/app/bm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bh;->b:Lcom/estrongs/android/pop/app/bm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bm;->a:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15b3

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/adb/c;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bh;->b:Lcom/estrongs/android/pop/app/bm;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bm;->a:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bh;->b:Lcom/estrongs/android/pop/app/bm;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/bm;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/ad;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
