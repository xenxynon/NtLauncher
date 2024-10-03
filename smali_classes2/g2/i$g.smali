.class public final Lg2/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf6/e;)V
    .locals 0

    invoke-static {p0}, Lg2/i$g;->b(Lf6/e;)V

    return-void
.end method

.method private static final b(Lf6/e;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly5/a;

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on card service onBindingDied, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BindServiceHandler2"

    invoke-virtual {p0, v0, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lg2/i;->a:Lg2/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg2/i;->M(Lg2/m;)V

    invoke-static {}, Lg2/i;->j()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {p0}, Lg2/i;->q(Lg2/i;)V

    invoke-static {p0}, Lg2/i;->l(Lg2/i;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on card service onNullBinding, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BindServiceHandler2"

    invoke-virtual {p0, v0, p1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lg2/i;->a:Lg2/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg2/i;->M(Lg2/m;)V

    invoke-static {}, Lg2/i;->j()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {p0}, Lg2/i;->q(Lg2/i;)V

    invoke-static {p0}, Lg2/i;->l(Lg2/i;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "service"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/i;->k()Lg2/i$a;

    move-result-object p0

    invoke-virtual {p0}, Lg2/i$a;->d()V

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-static {}, Lg2/i;->i()Lf6/e;

    move-result-object p0

    new-instance p1, Lg2/j;

    invoke-direct {p1, p0}, Lg2/j;-><init>(Lf6/e;)V

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lg2/i;->a:Lg2/i;

    invoke-static {p0}, Lg2/i;->q(Lg2/i;)V

    invoke-static {}, Lg2/i;->j()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    sget-object p0, Lg2/i;->a:Lg2/i;

    invoke-static {p2}, Lg2/m$a;->R(Landroid/os/IBinder;)Lg2/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg2/i;->M(Lg2/m;)V

    invoke-static {}, Lg2/i;->j()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {p0}, Lg2/i;->m(Lg2/i;)V

    invoke-static {}, Lg2/i;->h()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lg2/i;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    sget-object p0, Lh2/a;->a:Lh2/a;

    const-string p1, "BindServiceHandler2"

    const-string p2, "on card service connected."

    invoke-virtual {p0, p1, p2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    const-string p1, "BindServiceHandler2"

    const-string v0, "on card service disconnected."

    invoke-virtual {p0, p1, v0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lg2/i;->a:Lg2/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg2/i;->M(Lg2/m;)V

    invoke-static {}, Lg2/i;->j()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    invoke-static {p1}, Lg2/i;->r(Z)V

    invoke-static {p0}, Lg2/i;->q(Lg2/i;)V

    invoke-static {p0}, Lg2/i;->l(Lg2/i;)V

    return-void
.end method
