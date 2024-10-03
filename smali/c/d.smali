.class public final Lc/d;
.super Lc/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d$b;
    }
.end annotation


# static fields
.field public static final j:Lc/d$b;

.field private static k:Lc/r;


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/window/IDumpCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc/d;->j:Lc/d$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Choreographer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choreographer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1, p2, p3}, Lc/r;-><init>(IILandroid/view/Choreographer;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lc/d;->h:Landroid/content/Context;

    new-instance p2, Lc/d$c;

    invoke-direct {p2, p0}, Lc/d$c;-><init>(Lc/d;)V

    iput-object p2, p0, Lc/d;->i:Landroid/window/IDumpCallback$Stub;

    invoke-direct {p0}, Lc/d;->I()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "view_capture_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lc/d$a;

    invoke-direct {v0, p0, p3}, Lc/d$a;-><init>(Lc/d;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic C(Lc/d;Z)V
    .locals 0

    invoke-static {p0, p1}, Lc/d;->K(Lc/d;Z)V

    return-void
.end method

.method public static synthetic D(Lc/d;)V
    .locals 0

    invoke-static {p0}, Lc/d;->J(Lc/d;)V

    return-void
.end method

.method public static final synthetic E(Lc/d;)V
    .locals 0

    invoke-direct {p0}, Lc/d;->I()V

    return-void
.end method

.method public static final synthetic F(Lc/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lc/d;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic G()Lc/r;
    .locals 1

    sget-object v0, Lc/d;->k:Lc/r;

    return-object v0
.end method

.method public static final synthetic H(Lc/r;)V
    .locals 0

    sput-object p0, Lc/d;->k:Lc/r;

    return-void
.end method

.method private final I()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lc/r;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/b;

    invoke-direct {v1, p0}, Lc/b;-><init>(Lc/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final J(Lc/d;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "view_capture_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v0, Lc/r;->g:Lc/a;

    new-instance v1, Lc/c;

    invoke-direct {v1, p0, v2}, Lc/c;-><init>(Lc/d;Z)V

    invoke-virtual {v0, v1}, Lc/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lc/d;->h:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lc/d;->i:Landroid/window/IDumpCallback$Stub;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->registerDumpCallback(Landroid/window/IDumpCallback;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lc/d;->i:Landroid/window/IDumpCallback$Stub;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->unRegisterDumpCallback(Landroid/window/IDumpCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final K(Lc/d;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/r;->p(Z)V

    return-void
.end method

.method public static final L(Landroid/content/Context;)Lc/r;
    .locals 1

    sget-object v0, Lc/d;->j:Lc/d$b;

    invoke-virtual {v0, p0}, Lc/d$b;->b(Landroid/content/Context;)Lc/r;

    move-result-object p0

    return-object p0
.end method
