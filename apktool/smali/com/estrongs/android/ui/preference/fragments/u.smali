.class Lcom/estrongs/android/ui/preference/fragments/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/u;->a:Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/u;->a:Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/u;->a:Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/u;->a:Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/CleanPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01f6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
