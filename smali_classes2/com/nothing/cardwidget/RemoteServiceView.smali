.class public abstract Lcom/nothing/cardwidget/RemoteServiceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/RemoteServiceView$Companion;,
        Lcom/nothing/cardwidget/RemoteServiceView$CallbackHandler;,
        Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/RemoteServiceView$Companion;

.field private static final DATA_CHANGED:I = 0x6f

.field public static final TAG:Ljava/lang/String; = "RemoteServiceView"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private pendingCallTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Bundle;",
            "Ly5/l<",
            "Landroid/os/Bundle;",
            "Ln5/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

.field private remoteService:Lcom/nothing/cardwidget/IRemoteService;

.field private serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

.field private final serviceConnection:Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;

.field private serviceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/RemoteServiceView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/RemoteServiceView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/RemoteServiceView;->Companion:Lcom/nothing/cardwidget/RemoteServiceView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "synchronizedMap(mutableMapOf())"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->pendingCallTasks:Ljava/util/Map;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->lock:Ljava/lang/Object;

    new-instance p2, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;-><init>(Lcom/nothing/cardwidget/RemoteServiceView;)V

    iput-object p2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceConnection:Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;

    new-instance p3, Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-direct {p3, p1, p2}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$runPendingCallTasks(Lcom/nothing/cardwidget/RemoteServiceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->runPendingCallTasks()V

    return-void
.end method

.method private final bindService()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteServiceView start to bind service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteServiceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {p0, v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bind(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic forceCallRemoteService$default(Lcom/nothing/cardwidget/RemoteServiceView;Landroid/os/Bundle;Ly5/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/RemoteServiceView;->forceCallRemoteService(Landroid/os/Bundle;Ly5/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: forceCallRemoteService"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final runPendingCallTasks()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->pendingCallTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly5/l;

    invoke-virtual {p0, v2}, Lcom/nothing/cardwidget/RemoteServiceView;->callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardwidget/IRemoteService;->callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public final forceCallRemoteService(Landroid/os/Bundle;Ly5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ly5/l<",
            "-",
            "Landroid/os/Bundle;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-interface {v0, p1}, Lcom/nothing/cardwidget/IRemoteService;->callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln5/t;->a:Ln5/t;

    :cond_0
    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remoteService is dead: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteServiceView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Ln5/l;->a(Ljava/lang/Object;)Ln5/l;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->pendingCallTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :cond_5
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->pendingCallTasks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/l;

    :cond_7
    :goto_2
    return-void
.end method

.method public final getRemoteCallback()Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    return-object p0
.end method

.method public final getRemoteService()Lcom/nothing/cardwidget/IRemoteService;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "RemoteServiceView"

    const-string v1, "RemoteServiceView attach to window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->bindService()V

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public abstract onDataChanged(Landroid/os/Bundle;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "RemoteServiceView"

    const-string v1, "RemoteServiceView detach from window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    iget-object v2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/nothing/cardwidget/IRemoteService;->stopListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z

    :cond_0
    iget-object v2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {v2}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->unBind()V

    sget-object v2, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Ln5/l;->h:Ln5/l$a;

    invoke-static {v2}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDetachedFromWindow error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    const-string p0, "onDetachedFromWindow service unbound!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    iget-object p2, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    invoke-virtual {p1, p2}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->checkServiceIsAlive(Lcom/nothing/cardwidget/IRemoteService;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->bindService()V

    :cond_0
    return-void
.end method

.method public final setRemoteCallback(Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    return-void
.end method

.method public final setRemoteService(Lcom/nothing/cardwidget/IRemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteService:Lcom/nothing/cardwidget/IRemoteService;

    return-void
.end method

.method public final setRemoteServiceBindPolicy(Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;)V
    .locals 1

    const-string v0, "bindPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceBindHelper:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->setBindPolicy(Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;)V

    return-void
.end method

.method public final setRemoteServiceIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->serviceIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView;->remoteCallback:Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->bindService()V

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
