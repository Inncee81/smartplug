.class public Lcom/kankunit/smartplugcronus/cache/InfraredRayCache;
.super Ljava/lang/Object;
.source "InfraredRayCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private id:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/cache/InfraredRayCache;->baseView:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/InfraredRayCache;->id:Landroid/widget/TextView;

    return-object v0
.end method
