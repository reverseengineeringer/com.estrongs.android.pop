.class final Lcom/estrongs/android/pop/app/ad/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/m;->a:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ad/m;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/m;->a:Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController;->b(Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController$LocationType;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/m;->b:Landroid/content/Context;

    const-string v1, "com.dianxinos.optimizer.duplay"

    const-string v2, "pname"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/m;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay&referrer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/ad/m;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
