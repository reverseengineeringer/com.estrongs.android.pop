.class Lcom/estrongs/android/e/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/e/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/e/i;->a:Lcom/estrongs/android/e/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/i;->a:Lcom/estrongs/android/e/h;

    invoke-static {v0, p2}, Lcom/estrongs/android/e/h;->a(Lcom/estrongs/android/e/h;Landroid/content/Intent;)V

    return-void
.end method
