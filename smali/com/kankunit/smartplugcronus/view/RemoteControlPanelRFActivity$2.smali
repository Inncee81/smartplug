.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;
.super Ljava/lang/Object;
.source "RemoteControlPanelRFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0c0189

    .line 161
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 162
    .local v5, "time":I
    new-instance v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;-><init>()V

    .line 163
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "curtain_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setDname(Ljava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 165
    const v6, 0x7f020083

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    .line 166
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setMac(Ljava/lang/String;)V

    .line 167
    const/16 v6, 0xbdb

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPort(I)V

    .line 168
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setType(I)V

    .line 169
    const-string v6, "open"

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setStatus(Ljava/lang/String;)V

    .line 170
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 172
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    const-class v7, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 175
    .restart local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 176
    .local v4, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const v6, 0x7f0201b8

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 177
    const-string v6, "on"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 178
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 179
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v3

    .line 180
    .local v3, "orderNo":I
    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 181
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 182
    const-string v6, "curtainRemoteControl"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 184
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 185
    const-string v6, "other"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 186
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 188
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    const-class v7, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "controlId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-virtual {v6, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
