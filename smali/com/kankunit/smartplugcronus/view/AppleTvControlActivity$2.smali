.class Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;
.super Ljava/lang/Object;
.source "AppleTvControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 203
    .local v2, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "id"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->controlId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "name"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "type"

    const-string v4, "remoteControl"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-virtual {v3, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
