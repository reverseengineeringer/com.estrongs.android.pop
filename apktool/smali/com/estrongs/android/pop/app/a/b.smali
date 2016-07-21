.class final Lcom/estrongs/android/pop/app/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/e;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/e;->a()Lcom/estrongs/android/pop/app/messagebox/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/c;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/a/c;-><init>(Lcom/estrongs/android/pop/app/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
