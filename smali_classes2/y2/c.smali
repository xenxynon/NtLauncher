.class public final Ly2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c$c;,
        Ly2/c$a;,
        Ly2/c$d;,
        Ly2/c$e;
    }
.end annotation


# static fields
.field public static final a:Ly2/c;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:Landroid/os/Handler;

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ly2/c$c;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ln5/e;

.field private static final h:Ln5/e;

.field private static final i:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/c;

    invoke-direct {v0}, Ly2/c;-><init>()V

    sput-object v0, Ly2/c;->a:Ly2/c;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le6/e;->b(II)I

    move-result v0

    sput v0, Ly2/c;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ly2/c;->c:I

    mul-int/2addr v0, v1

    sput v0, Ly2/c;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ly2/c;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ly2/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Ly2/c$g;->g:Ly2/c$g;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Ly2/c;->g:Ln5/e;

    sget-object v0, Ly2/c$f;->g:Ly2/c$f;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Ly2/c;->h:Ln5/e;

    sget-object v0, Ly2/c$b;->g:Ly2/c$b;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Ly2/c;->i:Ln5/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Ly2/c;->c:I

    return v0
.end method

.method public static final synthetic b(Ly2/c;Ly2/c$c;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    invoke-direct {p0, p1}, Ly2/c;->g(Ly2/c$c;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Ly2/c;->d:I

    return v0
.end method

.method public static final d(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final f(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/c;->a:Ly2/c;

    new-instance v1, Ly2/c$c$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Ly2/c$c$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/i;)V

    invoke-direct {v0, v1}, Ly2/c;->g(Ly2/c$c;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final g(Ly2/c$c;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object p0, Ly2/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget-object v0, Ly2/c$a;->a:Ly2/c$a$a;

    invoke-virtual {v0, p1}, Ly2/c$a$a;->a(Ly2/c$c;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final i()Landroid/os/Handler;
    .locals 0

    sget-object p0, Ly2/c;->h:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public static final j(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly2/c;->i()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ly2/c;->i()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final h()Ljava/util/concurrent/ExecutorService;
    .locals 0

    sget-object p0, Ly2/c;->i:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
