.class public final Lc/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lc/d$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lc/r;
    .locals 0

    invoke-static {p0}, Lc/d$b;->c(Landroid/content/Context;)Lc/r;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/content/Context;)Lc/r;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc/d;->j:Lc/d$b;

    invoke-virtual {v0, p0}, Lc/d$b;->b(Landroid/content/Context;)Lc/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lc/r;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lc/d;->G()Lc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lc/d;->G()Lc/r;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lc/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x2

    const-string v2, "SAViewCapture"

    invoke-static {v2, v1}, Lc/r;->n(Ljava/lang/String;I)Lc/a;

    move-result-object v1

    const-string v2, "createAndStartNewLooperE\u2026READ_PRIORITY_FOREGROUND)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lc/d;-><init>(Landroid/content/Context;Landroid/view/Choreographer;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lc/d;->j:Lc/d$b;

    invoke-static {p0}, Lc/d;->H(Lc/r;)V

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object p0, Lc/r;->g:Lc/a;

    new-instance v0, Lc/e;

    invoke-direct {v0, p1}, Lc/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lc/a;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "try {\n                MA\u2026    throw e\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    throw p0
.end method
