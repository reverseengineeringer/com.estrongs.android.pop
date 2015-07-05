.class Lcom/estrongs/android/pop/app/network/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/c;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/c;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
