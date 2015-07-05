.class Lcom/estrongs/android/pop/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ai;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aj;->b:Lcom/estrongs/android/pop/app/ai;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->b:Lcom/estrongs/android/pop/app/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ai;->a(Lcom/estrongs/android/pop/app/ai;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->b:Lcom/estrongs/android/pop/app/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aj;->b:Lcom/estrongs/android/pop/app/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ai;->a(Lcom/estrongs/android/pop/app/ai;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->b:Lcom/estrongs/android/pop/app/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ai;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->a(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ai;->notifyDataSetChanged()V

    return-void
.end method
