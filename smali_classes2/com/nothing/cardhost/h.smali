.class public final Lcom/nothing/cardhost/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardhost/h$a;,
        Lcom/nothing/cardhost/h$b;
    }
.end annotation


# static fields
.field public static final l:Lcom/nothing/cardhost/h$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:J

.field private d:Landroid/os/Handler;

.field private e:Lcom/nothing/cardhost/h$b;

.field private f:Z

.field private g:Z

.field private h:J

.field private final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nothing/cardhost/g;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardhost/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardhost/h$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardhost/h;->l:Lcom/nothing/cardhost/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/nothing/cardhost/g;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeOutCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardhost/h;->a:Landroid/content/Context;

    iput p2, p0, Lcom/nothing/cardhost/h;->b:I

    int-to-long p1, p2

    const-wide/32 v0, 0xea60

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/nothing/cardhost/h;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nothing/cardhost/h;->h:J

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nothing/cardhost/h;->i:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/nothing/cardhost/h$d;

    invoke-direct {p1, p0}, Lcom/nothing/cardhost/h$d;-><init>(Lcom/nothing/cardhost/h;)V

    iput-object p1, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "period_refresh"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    new-instance p1, Lcom/nothing/cardhost/h$c;

    invoke-direct {p1, p0}, Lcom/nothing/cardhost/h$c;-><init>(Lcom/nothing/cardhost/h;)V

    iput-object p1, p0, Lcom/nothing/cardhost/h;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/cardhost/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardhost/h;->h:J

    return-wide v0
.end method

.method public static final synthetic b(Lcom/nothing/cardhost/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardhost/h;->c:J

    return-wide v0
.end method

.method public static final synthetic c(Lcom/nothing/cardhost/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic d(Lcom/nothing/cardhost/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardhost/h;->f:Z

    return p0
.end method

.method public static final synthetic e(Lcom/nothing/cardhost/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->g()Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/nothing/cardhost/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->h()V

    return-void
.end method

.method private final g()Z
    .locals 0

    iget p0, p0, Lcom/nothing/cardhost/h;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final h()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardhost/h;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardhost/g;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nothing/cardhost/h;->h:J

    invoke-interface {v0}, Lcom/nothing/cardhost/g;->b()V

    :cond_0
    sget-object v0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nothing/cardhost/h;->p()V

    :cond_2
    return-void
.end method

.method private final i()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nothing/cardhost/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nothing/cardhost/h;->k:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string p0, "timeHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private final j()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardhost/h;->e:Lcom/nothing/cardhost/h$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nothing/cardhost/h$b;

    iget-object v1, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "timeHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, p0, v1}, Lcom/nothing/cardhost/h$b;-><init>(Lcom/nothing/cardhost/h;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nothing/cardhost/h;->e:Lcom/nothing/cardhost/h$b;

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardhost/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/nothing/cardhost/h;->e:Lcom/nothing/cardhost/h$b;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final n()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardhost/h;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/nothing/cardhost/h;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final o()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardhost/h;->e:Lcom/nothing/cardhost/h$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/h;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardhost/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardhost/h;->f:Z

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->i()V

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->j()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardhost/h;->g:Z

    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "timeHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final m(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nothing/cardhost/h;->g:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardhost/h;->g:Z

    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nothing/cardhost/h;->g:Z

    iget-object p1, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    if-nez p1, :cond_1

    const-string p1, "timeHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardhost/h;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->n()V

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardhost/h;->f:Z

    iget-object v0, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "timeHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 4

    iput p1, p0, Lcom/nothing/cardhost/h;->b:I

    int-to-long v0, p1

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nothing/cardhost/h;->c:J

    invoke-direct {p0}, Lcom/nothing/cardhost/h;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nothing/cardhost/h;->h:J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardhost/h;->d:Landroid/os/Handler;

    if-nez p1, :cond_1

    const-string p1, "timeHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardhost/h;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
