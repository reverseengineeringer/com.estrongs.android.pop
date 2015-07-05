.class Lcom/estrongs/android/ui/dialog/gr;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/gr;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a027e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0281

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/gk;->d(Lcom/estrongs/android/ui/dialog/gk;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/gr;->a(I)Lorg/json/JSONObject;

    move-result-object v4

    :try_start_0
    const-string v3, "name"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "disable"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v3, "key"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object p2

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gr;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08002d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method
