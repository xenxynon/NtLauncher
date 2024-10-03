.class public final Lg0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/k;

    invoke-direct {v0}, Lg0/k;-><init>()V

    sput-object v0, Lg0/k;->a:Lg0/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ly5/a;)V
    .locals 0

    invoke-static {p0}, Lg0/k;->d(Ly5/a;)V

    return-void
.end method

.method public static final b(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "then"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg0/k;->a:Lg0/k;

    new-instance v1, Lg0/k$a;

    invoke-direct {v1, p2}, Lg0/k$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v1}, Lg0/k;->c(Landroid/view/View;Landroid/view/View;Ly5/a;)V

    return-void
.end method

.method private static final d(Ly5/a;)V
    .locals 1

    const-string v0, "$then"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/View;Ly5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "otherView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "then"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/window/SurfaceSyncGroup;

    const-string v0, "SysUIAnimation"

    invoke-direct {p0, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lg0/j;

    invoke-direct {v1, p3}, Lg0/j;-><init>(Ly5/a;)V

    invoke-virtual {p0, v0, v1}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method
