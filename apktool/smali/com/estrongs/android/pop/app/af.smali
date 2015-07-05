.class Lcom/estrongs/android/pop/app/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ai;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ai;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/af;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ai;->notifyDataSetChanged()V

    return-void
.end method
