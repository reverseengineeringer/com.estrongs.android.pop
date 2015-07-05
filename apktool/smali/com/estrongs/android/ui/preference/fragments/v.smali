.class Lcom/estrongs/android/ui/preference/fragments/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v3, v1}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;I)I

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/v;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    move v0, v1

    goto :goto_0
.end method
