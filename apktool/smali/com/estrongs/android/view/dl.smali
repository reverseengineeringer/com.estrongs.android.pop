.class Lcom/estrongs/android/view/dl;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/dj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Landroid/content/Intent;)V

    return-void
.end method
