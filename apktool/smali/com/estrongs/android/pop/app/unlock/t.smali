.class Lcom/estrongs/android/pop/app/unlock/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/unlock/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/t;->a:Lcom/estrongs/android/pop/app/unlock/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/t;->a:Lcom/estrongs/android/pop/app/unlock/s;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->B(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
