.class Lcom/estrongs/android/pop/app/messagebox/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/aa;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessageBoxRecommend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Box All IData CallBack=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/e;->a()Lcom/estrongs/android/pop/app/messagebox/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ab;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/messagebox/ab;-><init>(Lcom/estrongs/android/pop/app/messagebox/aa;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
