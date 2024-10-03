.class public Lcom/sysaac/haptic/player/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sysaac/haptic/player/f;


# static fields
.field private static final a:Ljava/lang/String; = "RichtapPlayer"


# instance fields
.field private final b:Z

.field private c:Landroid/os/Vibrator;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Class;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;

.field private h:Lcom/sysaac/haptic/sync/d;

.field private i:Lcom/sysaac/haptic/sync/SyncCallback;

.field private j:Lcom/sysaac/haptic/player/a;

.field private k:Lcom/sysaac/haptic/player/PlayerEventCallback;

.field private l:Lcom/sysaac/haptic/base/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RichtapPlayer"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sysaac/haptic/player/g;->b:Z

    new-instance v1, Lcom/sysaac/haptic/player/a;

    invoke-direct {v1}, Lcom/sysaac/haptic/player/a;-><init>()V

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->c:Landroid/os/Vibrator;

    const/4 p1, 0x0

    :try_start_0
    const-string v1, "richtap.os.PhonyVibrationEffect"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    const-string v1, "failed to reflect class: \"richtap.os.PhonyVibrationEffect\"!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "android.os.RichTapVibrationEffect"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    const-string p1, "failed to reflect class: \"android.os.RichTapVibrationEffect\"!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    if-nez p1, :cond_1

    :try_start_2
    const-string p1, "android.os.VibrationEffect"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p1, "failed to reflect class: \"android.os.VibrationEffect\"!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->k()V

    return-void
.end method

.method static synthetic a(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/base/o;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    return-object p0
.end method

.method static synthetic a(Lcom/sysaac/haptic/player/g;Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/sysaac/haptic/player/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/sysaac/haptic/player/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V
    .locals 6

    iput-object p4, p0, Lcom/sysaac/haptic/player/g;->i:Lcom/sysaac/haptic/sync/SyncCallback;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Richtap-Sync"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sysaac/haptic/player/k;

    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/sysaac/haptic/player/k;-><init>(Lcom/sysaac/haptic/player/g;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sysaac/haptic/sync/d;

    iget-object v2, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-direct {v1, v0, p1, v2}, Lcom/sysaac/haptic/sync/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/sysaac/haptic/player/a;)V

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    iget-object p2, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object p2, p2, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    invoke-interface {p2}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/sysaac/haptic/sync/d;->b(J)V

    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    iget-object p2, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object p2, p2, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    invoke-interface {p2}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p2

    int-to-long p2, p2

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget p0, p0, Lcom/sysaac/haptic/player/a;->i:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    iget-object p2, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget p2, p2, Lcom/sysaac/haptic/player/a;->i:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/sysaac/haptic/sync/d;->b(J)V

    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget p0, p0, Lcom/sysaac/haptic/player/a;->i:I

    int-to-long p2, p0

    :goto_0
    int-to-long v0, p0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/sysaac/haptic/sync/d;->a(JJ)V

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    invoke-static {}, Lcom/sysaac/haptic/base/r;->a()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object p4, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {p4}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sysaac/haptic/base/d;->b(Ljava/lang/String;IIII)V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->f:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->j(Ljava/lang/String;)I

    move-result p1

    int-to-long p3, p1

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x0

    if-eqz p4, :cond_3

    iget-object p3, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    invoke-interface {p4}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/sysaac/haptic/sync/d;->b(J)V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    invoke-interface {p4}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/sysaac/haptic/sync/d;->a(JJ)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    invoke-virtual {p0, p1, p2}, Lcom/sysaac/haptic/sync/d;->a(J)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/sysaac/haptic/player/g;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->g:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic e(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/sync/d;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    return-object p0
.end method

.method static synthetic f(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/sync/SyncCallback;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->i:Lcom/sysaac/haptic/sync/SyncCallback;

    return-object p0
.end method

.method static synthetic g(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/player/a;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    return-object p0
.end method

.method static synthetic h(Lcom/sysaac/haptic/player/g;)Lcom/sysaac/haptic/player/PlayerEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->k:Lcom/sysaac/haptic/player/PlayerEventCallback;

    return-object p0
.end method

.method public static j()Z
    .locals 5

    const-string v0, "RichtapPlayer"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "richtap.os.PhonyVibrationEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "failed to reflect class: \"richtap.os.PhonyVibrationEffect\"!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "android.os.RichTapVibrationEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "failed to reflect class: \"android.os.RichTapVibrationEffect\"!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    :try_start_2
    const-string v3, "android.os.VibrationEffect"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v3, "failed to reflect class: \"android.os.VibrationEffect\"!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    const-string v3, "checkIfRichTapSupport"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private k()V
    .locals 5

    :try_start_0
    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    const-string v0, "checkIfRichTapSupport"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    invoke-static {v0}, Lcom/sysaac/haptic/base/r;->a(Z)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, v1

    invoke-static {v2}, Lcom/sysaac/haptic/base/r;->a(I)I

    invoke-static {p0}, Lcom/sysaac/haptic/base/r;->b(I)I

    invoke-static {v1}, Lcom/sysaac/haptic/base/r;->a(Z)V

    const-string v1, "RichtapPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " majorVersion:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minorVersion:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->g:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->g:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->f:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->h:Lcom/sysaac/haptic/sync/d;

    :cond_0
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sysaac/haptic/base/o;->c()V

    iput-object v1, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sysaac/haptic/base/d;->a()V

    return-void
.end method

.method public a(II)V
    .locals 7

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    const-string v1, "createExtPreBaked"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->c:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/sysaac/haptic/base/d;->a(III)V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1, p3}, Lcom/sysaac/haptic/base/o;->a(III)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sysaac/haptic/player/PlayerEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sysaac/haptic/player/g;->k:Lcom/sysaac/haptic/player/PlayerEventCallback;

    return-void
.end method

.method public a(Ljava/io/File;IIII)V
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".he"

    invoke-static {v0, v1}, Lcom/sysaac/haptic/base/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sysaac/haptic/base/r;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string v1, "RichtapPlayer"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sysaac/haptic/player/g;->a(Ljava/lang/String;IIII)V

    goto :goto_4

    :cond_2
    const-string p0, "mContext is null!"

    goto :goto_3

    :cond_3
    const-string p0, "Wrong HE file extention!"

    :goto_3
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_6
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wrong parameter {patternFile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "} doesn\'t exist or has wrong file format!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/io/File;IILcom/sysaac/haptic/sync/SyncCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput-object p1, p0, Lcom/sysaac/haptic/player/a;->l:Ljava/io/File;

    iput p2, p0, Lcom/sysaac/haptic/player/a;->d:I

    iput p3, p0, Lcom/sysaac/haptic/player/a;->e:I

    iput-object p4, p0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 6

    const-string v0, "RichtapPlayer"

    :try_start_0
    const-string v1, "richtap RichtapPlayer  playPattern: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    invoke-static {}, Lcom/sysaac/haptic/base/r;->c()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Metadata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/sysaac/haptic/base/r;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sysaac/haptic/base/d;->a(Ljava/lang/String;IIII)V

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/16 v0, 0x16

    if-ne v2, v0, :cond_1

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sysaac/haptic/base/o;

    invoke-direct {v0}, Lcom/sysaac/haptic/base/o;-><init>()V

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-virtual {v0, p3, p4, p5}, Lcom/sysaac/haptic/base/o;->a(III)V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->i(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/sysaac/haptic/player/h;

    invoke-direct {v2, p0, p1, p4, p5}, Lcom/sysaac/haptic/player/h;-><init>(Lcom/sysaac/haptic/player/g;Ljava/lang/String;II)V

    :goto_0
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/sysaac/haptic/base/o;->a(IIILcom/sysaac/haptic/base/q;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    if-ne v2, v0, :cond_2

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sysaac/haptic/base/o;

    invoke-direct {v0}, Lcom/sysaac/haptic/base/o;-><init>()V

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-virtual {v0, p3, p4, p5}, Lcom/sysaac/haptic/base/o;->a(III)V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->i(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/sysaac/haptic/player/i;

    invoke-direct {v2, p0, p1, p4, p5}, Lcom/sysaac/haptic/player/i;-><init>(Lcom/sysaac/haptic/player/g;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-lt v2, v0, :cond_4

    new-instance v0, Lcom/sysaac/haptic/base/o;

    invoke-direct {v0}, Lcom/sysaac/haptic/base/o;-><init>()V

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-virtual {v0, p3, p4, p5}, Lcom/sysaac/haptic/base/o;->a(III)V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->l:Lcom/sysaac/haptic/base/o;

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->i(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/sysaac/haptic/player/j;

    invoke-direct {v2, p0, p1, p4, p5}, Lcom/sysaac/haptic/player/j;-><init>(Lcom/sysaac/haptic/player/g;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unsupport he version heVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    invoke-static {}, Lcom/sysaac/haptic/base/r;->a()I

    move-result v0

    const/16 v1, 0x18

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->e(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sysaac/haptic/base/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sysaac/haptic/player/a;->c:I

    return-void
.end method

.method public a([I[I[IZI)V
    .locals 10

    const-class v0, [I

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    :try_start_0
    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v1}, Lcom/sysaac/haptic/player/a;->a()V

    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->e:Ljava/lang/Class;

    const-string v2, "createEnvelope"

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const/4 v7, 0x2

    aput-object v0, v4, v7

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v0, v4, v8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v0, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->c:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 6

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    invoke-static {v0}, Lcom/sysaac/haptic/player/a;->a(Lcom/sysaac/haptic/b/a/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RichtapPlayer"

    const-string p1, "pause_start_seek seekTo() return - HE invalid or prepare() not be called."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    invoke-interface {v0}, Lcom/sysaac/haptic/b/a/c;->b()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sysaac/haptic/base/d;->a()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput p1, v0, Lcom/sysaac/haptic/player/a;->i:I

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sysaac/haptic/base/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget v0, p1, Lcom/sysaac/haptic/player/a;->c:I

    if-lez v0, :cond_6

    iget-object v0, p1, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iput v1, p1, Lcom/sysaac/haptic/player/a;->i:I

    move-object p1, v0

    :cond_3
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget v2, v1, Lcom/sysaac/haptic/player/a;->k:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    return v3

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sysaac/haptic/player/a;->b:J

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v1, v0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    if-eqz v1, :cond_5

    iget-object p1, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iget v2, v0, Lcom/sysaac/haptic/player/a;->d:I

    iget v0, v0, Lcom/sysaac/haptic/player/a;->e:I

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/sysaac/haptic/player/a;->d:I

    iget v0, v0, Lcom/sysaac/haptic/player/a;->e:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    :goto_0
    return v3

    :cond_6
    const/16 v0, 0x9

    iput v0, p1, Lcom/sysaac/haptic/player/a;->k:I

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->k:Lcom/sysaac/haptic/player/PlayerEventCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lcom/sysaac/haptic/player/PlayerEventCallback;->onPlayerStateChanged(I)V

    :cond_7
    :goto_1
    return v1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    return-void
.end method

.method public b(II)V
    .locals 1

    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sysaac/haptic/base/d;->b(II)V

    goto :goto_0

    :cond_0
    const-string p0, "RichtapPlayer"

    const-string p1, "mContext is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {v0}, Lcom/sysaac/haptic/player/a;->a()V

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput-object p1, p0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sysaac/haptic/player/a;->d:I

    iput p3, p0, Lcom/sysaac/haptic/player/a;->e:I

    iput-object p4, p0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    return-void
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget v0, v0, Lcom/sysaac/haptic/player/a;->k:I

    const/4 v1, 0x6

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sysaac/haptic/player/g;->l()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sysaac/haptic/base/d;->a(Landroid/content/Context;)Lcom/sysaac/haptic/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sysaac/haptic/base/d;->a()V

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    const/4 v1, 0x7

    iput v1, v0, Lcom/sysaac/haptic/player/a;->k:I

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    invoke-static {v0}, Lcom/sysaac/haptic/player/a;->a(Lcom/sysaac/haptic/b/a/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "RichtapPlayer"

    const-string v2, "pause_start_seek pause() return - HE invalid or prepare() not be called"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput v1, p0, Lcom/sysaac/haptic/player/a;->i:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v2, v0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p0

    iput p0, v0, Lcom/sysaac/haptic/player/a;->i:I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-wide v4, p0, Lcom/sysaac/haptic/player/a;->b:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-gez v0, :cond_3

    iput v1, p0, Lcom/sysaac/haptic/player/a;->i:I

    return-void

    :cond_3
    iget v1, p0, Lcom/sysaac/haptic/player/a;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sysaac/haptic/player/a;->i:I

    return-void
.end method

.method public d()Z
    .locals 5

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget v1, v0, Lcom/sysaac/haptic/player/a;->k:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    return v3

    :cond_0
    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    invoke-static {v0}, Lcom/sysaac/haptic/player/a;->a(Lcom/sysaac/haptic/b/a/c;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "RichtapPlayer"

    const-string v0, "pause_start_seek start() return - HE invalid or prepare() not called."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget v1, v0, Lcom/sysaac/haptic/player/a;->i:I

    if-gez v1, :cond_2

    return v3

    :cond_2
    iget v1, v0, Lcom/sysaac/haptic/player/a;->k:I

    const/16 v4, 0x9

    if-ne v4, v1, :cond_3

    iput v3, v0, Lcom/sysaac/haptic/player/a;->i:I

    :cond_3
    iget-object v1, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iget v0, v0, Lcom/sysaac/haptic/player/a;->i:I

    invoke-static {v1, v0}, Lcom/sysaac/haptic/base/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sysaac/haptic/player/a;->b:J

    iget-object v1, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput v2, v1, Lcom/sysaac/haptic/player/a;->k:I

    iget-object v2, v1, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    if-eqz v2, :cond_5

    iget-object v0, v1, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iget v3, v1, Lcom/sysaac/haptic/player/a;->d:I

    iget v1, v1, Lcom/sysaac/haptic/player/a;->e:I

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    goto :goto_0

    :cond_5
    iget v2, v1, Lcom/sysaac/haptic/player/a;->d:I

    iget v1, v1, Lcom/sysaac/haptic/player/a;->e:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sysaac/haptic/player/g;->c(Ljava/lang/String;IILcom/sysaac/haptic/sync/SyncCallback;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput v4, v0, Lcom/sysaac/haptic/player/a;->k:I

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->k:Lcom/sysaac/haptic/player/PlayerEventCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, v4}, Lcom/sysaac/haptic/player/PlayerEventCallback;->onPlayerStateChanged(I)V

    :cond_7
    return v3
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v1, v0, Lcom/sysaac/haptic/player/a;->l:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sysaac/haptic/base/r;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sysaac/haptic/base/r;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/sysaac/haptic/base/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x18

    invoke-static {}, Lcom/sysaac/haptic/base/r;->a()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/sysaac/haptic/base/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/sysaac/haptic/base/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v0, v0, Lcom/sysaac/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sysaac/haptic/base/r;->a(Ljava/lang/String;)Lcom/sysaac/haptic/b/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/sysaac/haptic/player/a;->a(Lcom/sysaac/haptic/b/a/c;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "RichtapPlayer"

    const-string v1, "prepare error, invalid HE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    invoke-virtual {p0}, Lcom/sysaac/haptic/player/a;->a()V

    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iput-object v0, p0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    return v1
.end method

.method public f()I
    .locals 4

    iget-object v0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object v1, v0, Lcom/sysaac/haptic/player/a;->h:Lcom/sysaac/haptic/sync/SyncCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sysaac/haptic/sync/SyncCallback;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    iget v1, v0, Lcom/sysaac/haptic/player/a;->k:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sysaac/haptic/player/g;->g()I

    move-result p0

    return p0

    :cond_2
    iget p0, v0, Lcom/sysaac/haptic/player/a;->i:I

    return p0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-wide v2, p0, Lcom/sysaac/haptic/player/a;->b:J

    sub-long/2addr v0, v2

    iget p0, p0, Lcom/sysaac/haptic/player/a;->i:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget-object p0, p0, Lcom/sysaac/haptic/player/a;->g:Lcom/sysaac/haptic/b/a/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sysaac/haptic/b/a/c;->b()I

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 1

    iget-object p0, p0, Lcom/sysaac/haptic/player/g;->j:Lcom/sysaac/haptic/player/a;

    iget p0, p0, Lcom/sysaac/haptic/player/a;->k:I

    const/4 v0, 0x6

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sysaac/haptic/player/g;->k:Lcom/sysaac/haptic/player/PlayerEventCallback;

    return-void
.end method
