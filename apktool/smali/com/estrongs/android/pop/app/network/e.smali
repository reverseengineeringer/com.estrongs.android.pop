.class Lcom/estrongs/android/pop/app/network/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/e;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/e;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->d(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/e;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/e/h;->c()V

    :cond_0
    return-void
.end method
