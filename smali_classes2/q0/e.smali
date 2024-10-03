.class public final Lq0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/e$b;,
        Lq0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt0/b<",
        "Lq0/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/hardware/display/DisplayManager;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lq0/e$a;

.field private l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "displayManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/e;->g:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lq0/e;->h:Landroid/content/Context;

    iput-object p3, p0, Lq0/e;->i:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lq0/e;->j:Ljava/util/List;

    new-instance p1, Lq0/e$a;

    invoke-direct {p1, p0}, Lq0/e$a;-><init>(Lq0/e;)V

    iput-object p1, p0, Lq0/e;->k:Lq0/e$a;

    return-void
.end method

.method public static synthetic a(Lq0/e;Lq0/e$b;)V
    .locals 0

    invoke-static {p0, p1}, Lq0/e;->h(Lq0/e;Lq0/e$b;)V

    return-void
.end method

.method public static synthetic b(Lq0/e;Lq0/e$b;)V
    .locals 0

    invoke-static {p0, p1}, Lq0/e;->j(Lq0/e;Lq0/e$b;)V

    return-void
.end method

.method public static final synthetic c(Lq0/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lq0/e;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lq0/e;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lq0/e;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic e(Lq0/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lq0/e;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic f(Lq0/e;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lq0/e;->l:Ljava/lang/Integer;

    return-void
.end method

.method private static final h(Lq0/e;Lq0/e$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lq0/e;->k()V

    :cond_0
    iget-object p0, p0, Lq0/e;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final j(Lq0/e;Lq0/e$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lq0/e;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lq0/e;->l()V

    const/4 p1, 0x0

    iput-object p1, p0, Lq0/e;->l:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private final k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lq0/e;->g:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lq0/e;->k:Lq0/e$a;

    iget-object p0, p0, Lq0/e;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    const-string v0, "e.rethrowFromSystemServer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method

.method private final l()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lq0/e;->g:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lq0/e;->k:Lq0/e$a;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    const-string v0, "e.rethrowFromSystemServer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public g(Lq0/e$b;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e;->i:Landroid/os/Handler;

    new-instance v1, Lq0/c;

    invoke-direct {v1, p0, p1}, Lq0/c;-><init>(Lq0/e;Lq0/e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(Lq0/e$b;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e;->i:Landroid/os/Handler;

    new-instance v1, Lq0/d;

    invoke-direct {v1, p0, p1}, Lq0/d;-><init>(Lq0/e;Lq0/e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
