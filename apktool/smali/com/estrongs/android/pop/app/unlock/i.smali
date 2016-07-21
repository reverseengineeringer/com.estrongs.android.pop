.class Lcom/estrongs/android/pop/app/unlock/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/i;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/i;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Lcom/estrongs/android/pop/app/unlock/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/i;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/i;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Lcom/estrongs/android/pop/app/unlock/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/q;->a()V

    :cond_0
    return-void
.end method
