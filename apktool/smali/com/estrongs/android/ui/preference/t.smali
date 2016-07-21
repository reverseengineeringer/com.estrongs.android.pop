.class Lcom/estrongs/android/ui/preference/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/TabletSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/t;->a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/t;->a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/t;->a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a(Lcom/estrongs/android/ui/preference/TabletSettingsActivity;)Lcom/estrongs/android/ui/preference/fragments/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/preference/fragments/ao;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/t;->a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/t;->a:Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a(Lcom/estrongs/android/ui/preference/TabletSettingsActivity;)Lcom/estrongs/android/ui/preference/fragments/ao;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
