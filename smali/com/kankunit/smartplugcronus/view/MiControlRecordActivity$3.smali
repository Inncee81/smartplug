.class Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;
.super Ljava/lang/Object;
.source "MiControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->isPlay:Z

    .line 249
    new-instance v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;-><init>(Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$PlayThread;->start()V

    .line 250
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 251
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    const-string v1, "Start playing"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method
