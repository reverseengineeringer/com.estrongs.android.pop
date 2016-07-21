.class Lcom/estrongs/android/l/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/l/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/l/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/l/l;->a:Lcom/estrongs/android/l/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/l;->a:Lcom/estrongs/android/l/k;

    invoke-static {v0, p2}, Lcom/estrongs/android/l/k;->a(Lcom/estrongs/android/l/k;Landroid/content/Intent;)V

    return-void
.end method
