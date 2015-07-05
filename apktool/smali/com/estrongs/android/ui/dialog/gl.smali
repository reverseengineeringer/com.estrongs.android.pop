.class Lcom/estrongs/android/ui/dialog/gl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gr;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/gr;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->c(Lcom/estrongs/android/ui/dialog/gk;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
