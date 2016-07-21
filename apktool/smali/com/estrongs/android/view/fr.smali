.class Lcom/estrongs/android/view/fr;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/fp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fr;->a:Lcom/estrongs/android/view/fp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fr;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Landroid/content/Intent;)V

    return-void
.end method
