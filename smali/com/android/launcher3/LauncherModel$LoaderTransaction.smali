.class public Lcom/android/launcher3/LauncherModel$LoaderTransaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderTransaction"
.end annotation


# instance fields
.field private final mTask:Lcom/android/launcher3/model/LoaderTask;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/LauncherModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object v1

    if-ne v1, p2, :cond_0

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/launcher3/LauncherModel;->access$402(Lcom/android/launcher3/LauncherModel;Z)Z

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Loader already stopped"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/LauncherModel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->mTask:Lcom/android/launcher3/model/LoaderTask;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->access$302(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/model/LoaderTask;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/launcher3/LauncherModel;->access$402(Lcom/android/launcher3/LauncherModel;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    const-string p0, "b/243688989"

    const-string v1, "launcher model loaded"

    invoke-static {p0, v1}, Lcom/android/launcher3/testing/shared/TestProtocol;->testLogD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
