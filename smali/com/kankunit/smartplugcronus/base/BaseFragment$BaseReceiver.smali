.class Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/base/BaseFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/base/BaseFragment;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/base/BaseFragment;Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/base/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    invoke-virtual {v0, p2}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->doReceive(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
