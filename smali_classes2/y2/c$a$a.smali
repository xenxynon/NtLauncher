.class public final Ly2/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c$a;
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

    invoke-direct {p0}, Ly2/c$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ly2/c$c;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ly2/c$c$a;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ly2/c;->a()I

    move-result v1

    invoke-static {}, Ly2/c;->c()I

    move-result v2

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Ly2/c$e;

    invoke-virtual {p1}, Ly2/c$c;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-direct {v7, p1, v0}, Ly2/c$e;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ly2/c$d;

    invoke-direct {v8}, Ly2/c$d;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0

    :cond_0
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0
.end method
