.class Lcom/estrongs/android/pop/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/k;->b:Lcom/estrongs/android/pop/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/k;->b:Lcom/estrongs/android/pop/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/i;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/l;-><init>(Lcom/estrongs/android/pop/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
