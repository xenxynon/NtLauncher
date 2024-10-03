.class public final Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/utils/ServiceBindHelper;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$getConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {v0, v1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$setConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->getServiceConnect()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {p1, p2}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$setBinder$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$getDeathRecipient$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {p1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$setConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;I)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->getServiceConnect()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$setConnectState$p(Lcom/nothing/cardwidget/utils/ServiceBindHelper;I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$serviceConnectProxy$1;->this$0:Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    invoke-static {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$scheduleToReBind(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    return-void
.end method
