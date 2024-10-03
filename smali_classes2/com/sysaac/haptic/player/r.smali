.class Lcom/sysaac/haptic/player/r;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Lcom/sysaac/haptic/player/l;


# direct methods
.method constructor <init>(Lcom/sysaac/haptic/player/l;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    iput p3, p0, Lcom/sysaac/haptic/player/r;->b:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sysaac/haptic/player/r;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "TencentPlayer"

    :try_start_0
    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->b(Lcom/sysaac/haptic/player/l;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->c(Lcom/sysaac/haptic/player/l;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->d(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/d;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->f(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/a;

    move-result-object p1

    iget p1, p1, Lcom/sysaac/haptic/player/a;->c:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p1

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->f(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/a;

    move-result-object v1

    iget-object v1, v1, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/sysaac/haptic/base/r;->j(Ljava/lang/String;)I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object p0, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p0}, Lcom/sysaac/haptic/player/l;->b(Lcom/sysaac/haptic/player/l;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x66

    const-wide/16 v1, 0xa

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-virtual {p0, v2}, Lcom/sysaac/haptic/player/l;->a(I)Z

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->f(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/a;

    move-result-object p1

    const/16 v1, 0x9

    iput v1, p1, Lcom/sysaac/haptic/player/a;->k:I

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->g(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/PlayerEventCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p0}, Lcom/sysaac/haptic/player/l;->g(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/PlayerEventCallback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sysaac/haptic/player/PlayerEventCallback;->onPlayerStateChanged(I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Landroid/os/Parcel;

    if-eqz v1, :cond_a

    check-cast p1, Landroid/os/Parcel;

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    :cond_3
    new-instance v1, Lcom/sysaac/haptic/sync/b;

    invoke-direct {v1, p1}, Lcom/sysaac/haptic/sync/b;-><init>(Landroid/os/Parcel;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"Metadata\": {\"Version\": 1},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sysaac/haptic/sync/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/os/HapticPlayer;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/os/DynamicEffect;->create(Ljava/lang/String;)Landroid/os/DynamicEffect;

    move-result-object v1

    iget-object v3, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    new-instance v4, Landroid/os/HapticPlayer;

    invoke-direct {v4, v1}, Landroid/os/HapticPlayer;-><init>(Landroid/os/DynamicEffect;)V

    iput-object v4, v3, Lcom/sysaac/haptic/player/l;->a:Landroid/os/HapticPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    iget-object v4, v3, Lcom/sysaac/haptic/player/l;->a:Landroid/os/HapticPlayer;

    invoke-static {v3}, Lcom/sysaac/haptic/player/l;->a(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/base/o;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v3}, Lcom/sysaac/haptic/player/l;->a(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/base/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sysaac/haptic/base/o;->a()I

    move-result v3

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/sysaac/haptic/player/r;->b:I

    :goto_0
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/HapticPlayer;->start(III)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v2, "no method HapticPlayer.start(loop, interval, amplitude), in TIMED_VIBRATION"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    iget-object p0, p0, Lcom/sysaac/haptic/player/l;->a:Landroid/os/HapticPlayer;

    invoke-virtual {p0, v1}, Landroid/os/HapticPlayer;->start(I)V

    goto :goto_1

    :cond_5
    const-string p0, "The system does not support HapticsPlayer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v3}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v3}, Lcom/sysaac/haptic/player/l;->e(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/SyncCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_6

    iget v4, p0, Lcom/sysaac/haptic/player/r;->a:I

    if-lt v3, v4, :cond_6

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->d(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/d;

    move-result-object p1

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/sysaac/haptic/sync/d;->b(J)V

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->d(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/d;

    move-result-object p1

    invoke-virtual {p1, v4, v5, v1, v2}, Lcom/sysaac/haptic/sync/d;->a(JJ)V

    goto :goto_2

    :cond_6
    if-ltz v3, :cond_7

    iget v1, p0, Lcom/sysaac/haptic/player/r;->a:I

    if-ge v3, v1, :cond_7

    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->f(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/sysaac/haptic/player/a;->c:I

    if-lez v1, :cond_7

    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-virtual {p1, v3}, Lcom/sysaac/haptic/player/l;->a(I)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {v1}, Lcom/sysaac/haptic/player/l;->b(Lcom/sysaac/haptic/player/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    iput v3, p0, Lcom/sysaac/haptic/player/r;->a:I

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p1}, Lcom/sysaac/haptic/player/l;->d(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/d;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/sysaac/haptic/sync/d;->b(J)V

    iget-object p0, p0, Lcom/sysaac/haptic/player/r;->c:Lcom/sysaac/haptic/player/l;

    invoke-static {p0}, Lcom/sysaac/haptic/player/l;->d(Lcom/sysaac/haptic/player/l;)Lcom/sysaac/haptic/sync/d;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/sysaac/haptic/sync/d;->a(JJ)V

    goto :goto_4

    :cond_9
    :goto_3
    const-string p0, "after stopPatternListIfNeeded ..."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ex in handleMessage:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
