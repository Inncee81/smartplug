.class Lcom/kankunit/smartplugcronus/view/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoginActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoginActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kankunit/smartplugcronus/view/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    return-void
.end method
