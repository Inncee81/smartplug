.class Lorg/videolan/vlc/gui/PreferencesActivity$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/PreferencesActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$1;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$1;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$1;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/gui/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$1;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/PreferencesActivity;->setResult(I)V

    .line 84
    const/4 v1, 0x1

    return v1
.end method
