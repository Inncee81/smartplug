.class public Lorg/jivesoftware/smackx/commands/AdHocCommandNote;
.super Ljava/lang/Object;
.source "AdHocCommandNote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    }
.end annotation


# instance fields
.field private type:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->type:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    .line 41
    iput-object p2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->value:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getType()Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->type:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->value:Ljava/lang/String;

    return-object v0
.end method
