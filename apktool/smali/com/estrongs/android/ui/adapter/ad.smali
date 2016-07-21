.class Lcom/estrongs/android/ui/adapter/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ad;->a:Lcom/estrongs/android/ui/adapter/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ad;->a:Lcom/estrongs/android/ui/adapter/ac;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/ac;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V

    return-void
.end method
