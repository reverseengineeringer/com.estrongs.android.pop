.class Lcom/estrongs/android/pop/app/gr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/FexApplication;->e(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v2

    goto :goto_0
.end method
