.class Lcom/estrongs/android/pop/app/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/l;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/l;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/b/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/b/m;-><init>(Lcom/estrongs/android/pop/app/b/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
