.class Landroidx/room/AutoCloser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AutoCloser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/AutoCloser;


# direct methods
.method constructor <init>(Landroidx/room/AutoCloser;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v0, v0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-wide v4, v3, Landroidx/room/AutoCloser;->mLastDecrementRefCountTimeStamp:J

    sub-long/2addr v1, v4

    iget-wide v4, v3, Landroidx/room/AutoCloser;->mAutoCloseTimeoutInMs:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, v3, Landroidx/room/AutoCloser;->mRefCount:I

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v3, Landroidx/room/AutoCloser;->mOnAutoCloseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v1, v1, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    iget-object v1, v1, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Landroidx/room/util/SneakyThrow;->reThrow(Ljava/lang/Exception;)V

    :goto_0
    iget-object p0, p0, Landroidx/room/AutoCloser$2;->this$0:Landroidx/room/AutoCloser;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "mOnAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
