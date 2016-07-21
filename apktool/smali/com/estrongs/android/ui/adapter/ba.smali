.class Lcom/estrongs/android/ui/adapter/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/az;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/az;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ba;->a:Lcom/estrongs/android/ui/adapter/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ba;->a:Lcom/estrongs/android/ui/adapter/az;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/az;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->notifyDataSetChanged()V

    return-void
.end method
