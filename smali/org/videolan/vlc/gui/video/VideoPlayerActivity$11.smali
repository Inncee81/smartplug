.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1754
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$19(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$20(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1755
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1756
    return-void

    .line 1754
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
