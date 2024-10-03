.class public final Ls3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b$a;
    }
.end annotation


# static fields
.field public static final c:Ls3/b$a;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls3/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ls3/b;->c:Ls3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lk6/e;->h:Lk6/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v2, v3}, Lkotlinx/coroutines/flow/a0;->b(IILk6/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object v0

    iput-object v0, p0, Ls3/b;->b:Lkotlinx/coroutines/flow/t;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCache: info is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconPackagesCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ls3/c;->a:Ls3/c;

    iget-object v1, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2, v1}, Ls3/c;->b(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object p1, p0, Ls3/b;->b:Lkotlinx/coroutines/flow/t;

    iget-object p0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/t;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/y<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ls3/b;->b:Lkotlinx/coroutines/flow/t;

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/t;)Lkotlinx/coroutines/flow/y;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Lv3/a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetPackageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ls3/b;->d(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/a;

    if-nez p0, :cond_1

    sget-object p0, Lq3/a;->a:Lq3/a;

    invoke-virtual {p0}, Lq3/a;->a()Lv3/a;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lq3/a;->a:Lq3/a;

    invoke-virtual {v1}, Lq3/a;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Ls3/c;->a:Ls3/c;

    iget-object v1, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ls3/c;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object p1, p0, Ls3/b;->b:Lkotlinx/coroutines/flow/t;

    iget-object p0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/t;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCache: removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconPackagesCache"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ls3/b;->b:Lkotlinx/coroutines/flow/t;

    iget-object p0, p0, Ls3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/t;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
