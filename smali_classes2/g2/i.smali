.class public final Lg2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/i$a;,
        Lg2/i$b;
    }
.end annotation


# static fields
.field public static final a:Lg2/i;

.field private static final b:Ln5/e;

.field private static c:Lg2/m;

.field private static d:Z

.field private static e:Z

.field private static f:Landroid/content/Context;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg2/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;

.field private static j:Ljava/util/concurrent/CountDownLatch;

.field private static final k:Landroid/os/Handler;

.field private static l:Lg2/i$a;

.field private static final m:Lf6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf6/e<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lf6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf6/e<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lf6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf6/e<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lg2/i$g;

.field private static final q:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg2/i;

    invoke-direct {v0}, Lg2/i;-><init>()V

    sput-object v0, Lg2/i;->a:Lg2/i;

    sget-object v1, Lg2/i$c;->g:Lg2/i$c;

    invoke-static {v1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v1

    sput-object v1, Lg2/i;->b:Ln5/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lg2/i;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg2/i;->h:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg2/i;->i:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lg2/i;->j:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lg2/i;->k:Landroid/os/Handler;

    new-instance v2, Lg2/i$a;

    invoke-direct {v2, v0, v1}, Lg2/i$a;-><init>(Lg2/i;Landroid/os/Handler;)V

    sput-object v2, Lg2/i;->l:Lg2/i$a;

    new-instance v1, Lg2/i$d;

    invoke-direct {v1, v0}, Lg2/i$d;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lg2/i;->m:Lf6/e;

    new-instance v1, Lg2/i$e;

    invoke-direct {v1, v0}, Lg2/i$e;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lg2/i;->n:Lf6/e;

    new-instance v1, Lg2/i$f;

    invoke-direct {v1, v0}, Lg2/i$f;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lg2/i;->o:Lf6/e;

    new-instance v0, Lg2/i$g;

    invoke-direct {v0}, Lg2/i$g;-><init>()V

    sput-object v0, Lg2/i;->p:Lg2/i$g;

    sget-object v0, Lg2/h;->g:Lg2/h;

    sput-object v0, Lg2/i;->q:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final A(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final B(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final C()V
    .locals 2

    sget-object p0, Lg2/i;->k:Landroid/os/Handler;

    sget-object v0, Lg2/i;->n:Lf6/e;

    new-instance v1, Lg2/g;

    invoke-direct {v1, v0}, Lg2/g;-><init>(Lf6/e;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lg2/d;

    invoke-direct {v1, v0}, Lg2/d;-><init>(Lf6/e;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final D(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final E(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final F()V
    .locals 3

    sget-object p0, Lg2/i;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg2/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/i$b;

    sget-object v2, Lg2/i;->c:Lg2/m;

    invoke-interface {v1, v2}, Lg2/i$b;->a(Lg2/m;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final G()V
    .locals 2

    sget-object p0, Lg2/i;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg2/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/i$b;

    invoke-interface {v1}, Lg2/i$b;->b()V

    goto :goto_0

    :cond_0
    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final I()V
    .locals 4

    sget-boolean p0, Lg2/i;->e:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lg2/i;->f:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "appContext"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    sget-object v2, Lg2/i;->p:Lg2/i$g;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sput-boolean v0, Lg2/i;->e:Z

    :cond_1
    sget-object p0, Lg2/i;->c:Lg2/m;

    if-eqz p0, :cond_3

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    sget-object p0, Lg2/i;->c:Lg2/m;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v2, Lg2/i;->m:Lf6/e;

    new-instance v3, Lg2/c;

    invoke-direct {v3, v2}, Lg2/c;-><init>(Lf6/e;)V

    invoke-interface {p0, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sput-object v1, Lg2/i;->c:Lg2/m;

    :cond_3
    return-void
.end method

.method private static final J(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final K()V
    .locals 2

    sget-object p0, Lg2/i;->l:Lg2/i$a;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lg2/i$a;->a(J)V

    sget-object p0, Lg2/i;->l:Lg2/i$a;

    invoke-virtual {p0}, Lg2/i$a;->c()V

    return-void
.end method

.method private static final L(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lh2/a;->a:Lh2/a;

    const-string v1, "BindServiceHandler2"

    const-string v2, "Run service connect callback."

    invoke-virtual {v0, v1, v2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->L(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->E(Lf6/e;)V

    return-void
.end method

.method public static synthetic c(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->B(Lf6/e;)V

    return-void
.end method

.method public static synthetic d(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->A(Lf6/e;)V

    return-void
.end method

.method public static synthetic e(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->D(Lf6/e;)V

    return-void
.end method

.method public static synthetic f(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i;->J(Lf6/e;)V

    return-void
.end method

.method public static final synthetic g(Lg2/i;)Z
    .locals 0

    invoke-direct {p0}, Lg2/i;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic h()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg2/i;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic i()Lf6/e;
    .locals 1

    sget-object v0, Lg2/i;->m:Lf6/e;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lg2/i;->j:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static final synthetic k()Lg2/i$a;
    .locals 1

    sget-object v0, Lg2/i;->l:Lg2/i$a;

    return-object v0
.end method

.method public static final synthetic l(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->z()V

    return-void
.end method

.method public static final synthetic m(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->C()V

    return-void
.end method

.method public static final synthetic n(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->F()V

    return-void
.end method

.method public static final synthetic o(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->G()V

    return-void
.end method

.method public static final synthetic p(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->I()V

    return-void
.end method

.method public static final synthetic q(Lg2/i;)V
    .locals 0

    invoke-direct {p0}, Lg2/i;->K()V

    return-void
.end method

.method public static final synthetic r(Z)V
    .locals 0

    sput-boolean p0, Lg2/i;->e:Z

    return-void
.end method

.method private final t()Z
    .locals 4

    sget-object v0, Lg2/i;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0}, Lg2/i;->w()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x1

    sget-object v2, Lg2/i;->q:Ljava/util/concurrent/Executor;

    sget-object v3, Lg2/i;->p:Lg2/i$g;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p0

    sput-boolean p0, Lg2/i;->e:Z

    return p0
.end method

.method private final u()V
    .locals 8

    sget-object p0, Lg2/i;->c:Lg2/m;

    const-string v0, "BindServiceHandler2"

    if-nez p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object p0, Lg2/i;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    const/4 v3, 0x1

    if-gez p0, :cond_0

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lg2/i;->j:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    sget-object p0, Lg2/i;->a:Lg2/i;

    invoke-direct {p0}, Lg2/i;->t()Z

    move-result p0

    sput-boolean p0, Lg2/i;->e:Z

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v4, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    sget-object v5, Lg2/i;->f:Landroid/content/Context;

    if-nez v5, :cond_1

    const-string v5, "appContext"

    invoke-static {v5}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    sget-object v6, Lg2/i;->p:Lg2/i$g;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v5, "Bind card service error, release connection."

    invoke-static {v0, v5, p0}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-boolean p0, Lg2/i;->e:Z

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_3

    :try_start_1
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    sget-object p0, Lg2/i;->j:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sget-object v3, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Lg2/i;->l:Lg2/i$a;

    invoke-virtual {p0, v5, v6}, Lg2/i$a;->a(J)V

    const-string p0, "Waiting connect time out, begin retry."

    goto :goto_2

    :cond_3
    sget-object p0, Lg2/i;->l:Lg2/i$a;

    invoke-static {p0, v5, v6, v3, v4}, Lg2/i$a;->b(Lg2/i$a;JILjava/lang/Object;)V

    const-string p0, "Current service is not ready, delay retry."

    :goto_2
    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin bind card service firstly, waiting time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call bind card service over, cardService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lg2/i;->c:Lg2/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final w()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lg2/i;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method private final y()Z
    .locals 2

    sget-object p0, Lg2/i;->c:Lg2/m;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private final z()V
    .locals 2

    sget-object p0, Lg2/i;->k:Landroid/os/Handler;

    sget-object v0, Lg2/i;->o:Lf6/e;

    new-instance v1, Lg2/f;

    invoke-direct {v1, v0}, Lg2/f;-><init>(Lf6/e;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lg2/e;

    invoke-direct {v1, v0}, Lg2/e;-><init>(Lf6/e;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Lg2/i$b;)V
    .locals 2

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lg2/i;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg2/i;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final M(Lg2/m;)V
    .locals 0

    sput-object p1, Lg2/i;->c:Lg2/m;

    return-void
.end method

.method public final N(Lg2/i$b;)V
    .locals 1

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lg2/i;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg2/i;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s(Ly5/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Lg2/m;",
            "Ln5/t;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg2/i;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    sget-object v0, Lg2/i;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lg2/i;->k:Landroid/os/Handler;

    sget-object v3, Lg2/i;->l:Lg2/i$a;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lg2/i;->a:Lg2/i;

    invoke-direct {v2}, Lg2/i;->t()Z

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "BindServiceHandler2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder Check waiting time out. Service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lg2/i;->c:Lg2/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lg2/i;->y()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lg2/i;->c:Lg2/m;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public final v()Lg2/m;
    .locals 0

    sget-object p0, Lg2/i;->c:Lg2/m;

    return-object p0
.end method

.method public final declared-synchronized x(Landroid/content/Context;Lg2/i$b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lg2/i;->H(Lg2/i$b;)V

    sget-boolean v0, Lg2/i;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lg2/i;->f:Landroid/content/Context;

    invoke-direct {p0}, Lg2/i;->u()V

    const/4 p1, 0x1

    sput-boolean p1, Lg2/i;->d:Z

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lg2/i;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lg2/i;->c:Lg2/m;

    invoke-interface {p2, v0}, Lg2/i$b;->a(Lg2/m;)V

    sget-object p2, Lh2/a;->a:Lh2/a;

    const-string v0, "BindServiceHandler2"

    const-string v1, "Service has connected, send notify."

    invoke-virtual {p2, v0, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lh2/a;->a:Lh2/a;

    const-string v0, "BindServiceHandler2"

    const-string v1, "Service is dead?, check again."

    invoke-virtual {p2, v0, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lg2/i;->u()V

    :goto_0
    sget-object p2, Lh2/a;->a:Lh2/a;

    const-string v0, "BindServiceHandler2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current handler has initialed. cardService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lg2/i;->c:Lg2/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
