.class Lcom/estrongs/android/pop/app/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->N()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    const v1, 0x7f0806c5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
