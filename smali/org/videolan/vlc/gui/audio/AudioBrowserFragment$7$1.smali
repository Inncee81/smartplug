.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7$1;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;->onPopupMenu(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;

    iput p2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7$1;->val$position:I

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7$1;->this$1:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;->access$0(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;)Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7$1;->val$position:I

    # invokes: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
    invoke-static {v0, p1, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$10(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
