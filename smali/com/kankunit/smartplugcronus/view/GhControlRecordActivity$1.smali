.class Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;
.super Landroid/os/Handler;
.source "GhControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "buttonName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "buttonName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "buttonId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "buttonId":I
    const-string v4, "begin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 122
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 123
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 124
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 125
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iput-boolean v7, v4, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->isPlay:Z

    .line 126
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    const-string v5, "End Play"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 130
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 132
    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 133
    move-object v2, v3

    .line 134
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->access$1(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1$1;

    invoke-direct {v5, p0, v2}, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;Landroid/view/View;)V

    .line 139
    const-wide/16 v6, 0x64

    .line 134
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    return-void

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    invoke-virtual {v4, v0}, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method
