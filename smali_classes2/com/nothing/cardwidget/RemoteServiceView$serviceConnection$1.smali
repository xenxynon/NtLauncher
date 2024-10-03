.class public final Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/RemoteServiceView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/RemoteServiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;->this$0:Lcom/nothing/cardwidget/RemoteServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "RemoteServiceView"

    const-string v0, "RemoteServiceView onServiceConnected-------"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;->this$0:Lcom/nothing/cardwidget/RemoteServiceView;

    invoke-static {p2}, Lcom/nothing/cardwidget/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nothing/cardwidget/IRemoteService;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/nothing/cardwidget/RemoteServiceView;->setRemoteService(Lcom/nothing/cardwidget/IRemoteService;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;->this$0:Lcom/nothing/cardwidget/RemoteServiceView;

    new-instance v0, Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    new-instance v1, Lcom/nothing/cardwidget/RemoteServiceView$CallbackHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "getMainLooper()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;->this$0:Lcom/nothing/cardwidget/RemoteServiceView;

    invoke-direct {v1, v2, v3}, Lcom/nothing/cardwidget/RemoteServiceView$CallbackHandler;-><init>(Landroid/os/Looper;Lcom/nothing/cardwidget/RemoteServiceView;)V

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Lcom/nothing/cardwidget/RemoteServiceView;->setRemoteCallback(Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/RemoteServiceView$serviceConnection$1;->this$0:Lcom/nothing/cardwidget/RemoteServiceView;

    :try_start_0
    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->getRemoteService()Lcom/nothing/cardwidget/IRemoteService;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->getRemoteCallback()Lcom/nothing/cardwidget/RemoteServiceView$RemoteCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nothing/cardwidget/IRemoteService;->startListening(Lcom/nothing/cardwidget/IRemoteServiceCallback;)Z

    :cond_0
    invoke-static {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->access$runPendingCallTasks(Lcom/nothing/cardwidget/RemoteServiceView;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remoteService is dead: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "RemoteServiceView"

    const-string p1, "RemoteServiceView onServiceDisconnected-------"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
