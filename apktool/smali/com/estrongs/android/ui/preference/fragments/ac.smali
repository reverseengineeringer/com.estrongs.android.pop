.class Lcom/estrongs/android/ui/preference/fragments/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/ac;->a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ac;->a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->c(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ac;->a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
