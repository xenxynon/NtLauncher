.class public final Lg2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lg2/k;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lg2/k;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lg2/k;->i()Lg2/k;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lg2/k;->g:Lg2/k$a;

    new-instance v0, Lg2/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg2/k;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/i;)V

    invoke-static {v0}, Lg2/k;->j(Lg2/k;)V

    :cond_0
    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {}, Lg2/k;->i()Lg2/k;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
