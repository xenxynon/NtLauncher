.class public Lcom/sysaac/haptic/sync/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x64

.field public static final c:I = 0x65

.field public static final d:I = 0x66

.field public static final e:J = 0xaL

.field private static final f:Ljava/lang/String; = "VibrationTrack"

.field private static final g:I = 0x14


# instance fields
.field public a:Z

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Ljava/io/FileDescriptor;

.field private k:Lcom/sysaac/haptic/sync/a;

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->l:J

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->h:J

    iput-object p1, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    new-instance p1, Lcom/sysaac/haptic/sync/a;

    invoke-direct {p1, p2}, Lcom/sysaac/haptic/sync/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/sysaac/haptic/player/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->l:J

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->h:J

    iput-object p1, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    new-instance p1, Lcom/sysaac/haptic/sync/a;

    invoke-direct {p1, p2, p3}, Lcom/sysaac/haptic/sync/a;-><init>(Ljava/lang/String;Lcom/sysaac/haptic/player/a;)V

    iput-object p1, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "VibrationTrack"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->h:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sysaac/haptic/sync/d;->j:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->l:J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "VibrationTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/sysaac/haptic/sync/d;->b(JJ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sysaac/haptic/sync/d;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(JJ)V
    .locals 3

    iget-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "VibrationTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sysaac/haptic/sync/d;->b(JJ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sysaac/haptic/sync/d;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "VibrationTrack"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sysaac/haptic/sync/d;->l:J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sysaac/haptic/sync/d;->h:J

    return-void
.end method

.method protected b(JJ)V
    .locals 5

    const-string v0, "VibrationTrack"

    :try_start_0
    iget-object v1, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    invoke-virtual {v1, p3, p4}, Lcom/sysaac/haptic/sync/a;->a(J)Lcom/sysaac/haptic/sync/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronize curPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",timeUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/sysaac/haptic/sync/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sysaac/haptic/sync/b;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v1, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    cmp-long v2, p3, p1

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_1

    iget-object p1, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-wide v3, p0, Lcom/sysaac/haptic/sync/d;->m:J

    goto :goto_0

    :cond_1
    sub-long/2addr p3, p1

    const-wide/16 p1, 0x14

    cmp-long v2, p3, p1

    if-lez v2, :cond_2

    sub-long v3, p3, p1

    :cond_2
    iget-boolean p1, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "synchronize vib scheduleTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-wide v3, p0, Lcom/sysaac/haptic/sync/d;->m:J

    iget-object p0, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method protected c()V
    .locals 7

    const-string v0, "VibrationTrack"

    :try_start_0
    iget-object v1, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    invoke-virtual {v1}, Lcom/sysaac/haptic/sync/a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sysaac/haptic/sync/d;->l:J

    iget-boolean v1, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleTimedEvents @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sysaac/haptic/sync/d;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sysaac/haptic/sync/d;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v1, p0, Lcom/sysaac/haptic/sync/d;->l:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/sysaac/haptic/sync/d;->h:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v6, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleTimedEvents scheduleTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sysaac/haptic/sync/d;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleTimedEvents @ completed- tail pattern duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    invoke-virtual {v2}, Lcom/sysaac/haptic/sync/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mLastScheduledTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sysaac/haptic/sync/d;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/sysaac/haptic/sync/d;->i:Landroid/os/Handler;

    const/16 v2, 0x66

    iget-wide v3, p0, Lcom/sysaac/haptic/sync/d;->m:J

    iget-object p0, p0, Lcom/sysaac/haptic/sync/d;->k:Lcom/sysaac/haptic/sync/a;

    invoke-virtual {p0}, Lcom/sysaac/haptic/sync/a;->b()I

    move-result p0

    int-to-long v5, p0

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ex in scheduleTimedEvents"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
