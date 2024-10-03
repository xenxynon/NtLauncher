.class Lcom/android/launcher3/proxy/ProxyActivityStarter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/proxy/ProxyActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/proxy/ProxyActivityStarter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/proxy/ProxyActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;->this$0:Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;->this$0:Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-static {v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->access$000(Lcom/android/launcher3/proxy/ProxyActivityStarter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "ProxyActivityStarter"

    const-string v0, "onLockTaskModeChanged: pending finish is scheduled"

    invoke-static {p1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;->this$0:Lcom/android/launcher3/proxy/ProxyActivityStarter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->access$002(Lcom/android/launcher3/proxy/ProxyActivityStarter;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter$1;->this$0:Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-virtual {p0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method
