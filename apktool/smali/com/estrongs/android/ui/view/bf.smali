.class Lcom/estrongs/android/ui/view/bf;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/NaviListView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/NaviListView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bf;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bf;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->b()V

    return-void
.end method
