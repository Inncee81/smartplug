.class public Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;
.super Ljava/lang/IllegalArgumentException;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompatibleKeyException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 309
    const-string v0, "incompatible keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 310
    return-void
.end method
