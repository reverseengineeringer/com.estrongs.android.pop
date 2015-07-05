.class public Lcom/estrongs/android/pop/app/editor/PopNoteEditorSetting;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditorSetting;->addPreferencesFromResource(I)V

    return-void
.end method
