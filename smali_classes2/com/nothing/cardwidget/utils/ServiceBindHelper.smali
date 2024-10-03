.class public final Lcom/nothing/cardwidget/utils/ServiceBindHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState;,
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$Companion;,
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;,
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy;,
        Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$Companion;

.field private static final MSG_RETRY_BIND_SERVICE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ServiceBindHelper"


# instance fields
.field private bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

.field private binder:Landroid/os/IBinder;

.field private connectState:I

.field private final context:Landroid/content/Context;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

.field private intent:Landroid/content/Intent;

.field private retryCount:I

.field private final serviceConnect:Landroid/content/ServiceConnection;

.field private serviceConnectProxy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->Companion:Lcom/nothing/cardwidget/utils/ServiceBindHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceConnect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnect:Landroid/content/ServiceConnection;

    new-instance p1, Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy;

    invoke-direct {p1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$DefaultBindPolicy;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    new-instance p1, Lcom/nothing/cardwidget/utils/a;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/utils/a;-><init>(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance p1, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;-><init>(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnectProxy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->deathRecipient$lambda-0(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    return-void
.end method

.method public static final synthetic access$getConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    return p0
.end method

.method public static final synthetic access$getDeathRecipient$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static final synthetic access$onRetryBindService(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->onRetryBindService()V

    return-void
.end method

.method public static final synthetic access$scheduleToReBind(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->scheduleToReBind()V

    return-void
.end method

.method public static final synthetic access$setBinder$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public static final synthetic access$setConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    return-void
.end method

.method private static final deathRecipient$lambda-0(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ServiceBindHelper"

    const-string v1, "Receive service death notice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    return-void
.end method

.method private static synthetic getConnectState$annotations()V
    .locals 0
    .annotation runtime Lcom/nothing/cardwidget/utils/ServiceBindHelper$ServiceConnectState;
    .end annotation

    return-void
.end method

.method private final onRetryBindService()V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->reBind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->retryCount:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->retryCount:I

    invoke-direct {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->scheduleToReBind()V

    :goto_0
    return-void
.end method

.method private final reBind()Z
    .locals 4

    iget v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->intent:Landroid/content/Intent;

    const-string v1, "ServiceBindHelper"

    if-nez v0, :cond_1

    const-string v0, "reBind error, intent is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnectProxy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    invoke-interface {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;->getBindFlags()I

    move-result p0

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reBind ,isBind:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_4
    return v2
.end method

.method private final scheduleToReBind()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;->getHelper()Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;-><init>(Landroid/os/Looper;Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    :cond_3
    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    invoke-interface {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;->isAutoReBind()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->retryCount:I

    iget-object v1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    invoke-interface {v1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;->getReBindLimitCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    invoke-interface {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;->getRebindInterval()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ServiceBindHelper"

    const-string v1, "bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind:current bindState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnectProxy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;

    iget-object v2, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    invoke-interface {v2}, Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;->getBindFlags()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->scheduleToReBind()V

    :cond_1
    return-void
.end method

.method public final checkServiceIsAlive(Lcom/nothing/cardwidget/IRemoteService;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getServiceConnect()Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnect:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public final setBindPolicy(Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;)V
    .locals 1

    const-string v0, "bindPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->bindPolicy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$IBindPolicy;

    return-void
.end method

.method public final unBind()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->handler:Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->serviceConnectProxy:Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->connectState:I

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    iget-object v2, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->binder:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlinkToDeath error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceBindHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->binder:Landroid/os/IBinder;

    return-void
.end method
