.class Lcom/estrongs/android/pop/app/lq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/q;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/lp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/lp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lq;->a:Lcom/estrongs/android/pop/app/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lq;->a:Lcom/estrongs/android/pop/app/lp;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/lp;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ah()V

    :cond_0
    return-void
.end method
