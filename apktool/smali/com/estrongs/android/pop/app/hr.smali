.class Lcom/estrongs/android/pop/app/hr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hr;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method
