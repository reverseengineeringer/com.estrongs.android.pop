.class Lcom/estrongs/android/pop/app/hg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hg;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/i;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/i;->b()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/i;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/i;->c()V

    invoke-static {}, Lcom/estrongs/android/ui/notification/i;->a()V

    goto :goto_0
.end method
