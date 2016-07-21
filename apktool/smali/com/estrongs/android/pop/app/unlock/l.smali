.class Lcom/estrongs/android/pop/app/unlock/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/f;

.field final synthetic b:Lcom/estrongs/android/pop/app/unlock/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/j;Lcom/duapps/ad/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/l;->b:Lcom/estrongs/android/pop/app/unlock/j;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/l;->a:Lcom/duapps/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/l;->a:Lcom/duapps/ad/f;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/l;->b:Lcom/estrongs/android/pop/app/unlock/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Lcom/estrongs/android/pop/app/unlock/q;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/l;->a:Lcom/duapps/ad/f;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->a(Lcom/duapps/ad/f;)V

    return-void
.end method
