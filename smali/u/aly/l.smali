.class public final Lu/aly/l;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/p;


# static fields
.field private static c:Lu/aly/l;


# instance fields
.field private a:Lu/aly/p;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/l;->b:Landroid/content/Context;

    .line 18
    new-instance v0, Lu/aly/k;

    iget-object v1, p0, Lu/aly/l;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/l;->a:Lu/aly/p;

    .line 19
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/l;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lu/aly/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/l;->c:Lu/aly/l;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lu/aly/l;

    invoke-direct {v0, p0}, Lu/aly/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/l;->c:Lu/aly/l;

    .line 26
    :cond_0
    sget-object v0, Lu/aly/l;->c:Lu/aly/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lu/aly/l;)Lu/aly/p;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lu/aly/l;->a:Lu/aly/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lu/aly/l$2;

    invoke-direct {v0, p0}, Lu/aly/l$2;-><init>(Lu/aly/l;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public a(Lcom/umeng/analytics/onlineconfig/a;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lu/aly/l;->a:Lu/aly/p;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lu/aly/l;->a:Lu/aly/p;

    check-cast v0, Lcom/umeng/analytics/onlineconfig/c;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/c;)V

    .line 37
    :cond_0
    return-void
.end method

.method public a(Lu/aly/p;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lu/aly/l;->a:Lu/aly/p;

    .line 31
    return-void
.end method

.method public a(Lu/aly/q;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lu/aly/l$1;

    invoke-direct {v0, p0, p1}, Lu/aly/l$1;-><init>(Lu/aly/l;Lu/aly/q;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lu/aly/l$3;

    invoke-direct {v0, p0}, Lu/aly/l$3;-><init>(Lu/aly/l;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public b(Lu/aly/q;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lu/aly/l;->a:Lu/aly/p;

    invoke-interface {v0, p1}, Lu/aly/p;->b(Lu/aly/q;)V

    .line 49
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lu/aly/l$4;

    invoke-direct {v0, p0}, Lu/aly/l$4;-><init>(Lu/aly/l;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->c(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
