.class Lj1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/String;

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/m;->g:Landroid/content/Context;

    iput p2, p0, Lj1/m;->h:I

    iput-object p3, p0, Lj1/m;->i:Landroid/os/Handler;

    iput-object p4, p0, Lj1/m;->k:Ljava/lang/String;

    new-instance p1, Lj1/l;

    invoke-direct {p1, p0}, Lj1/l;-><init>(Lj1/m;)V

    iput-object p1, p0, Lj1/m;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static e(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lj1/m;)V
    .locals 1

    iget-boolean v0, p0, Lj1/m;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/m;->g:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/m;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lj1/m;->i:Landroid/os/Handler;

    iget-object p0, p0, Lj1/m;->j:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lj1/m;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/m;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lj1/m;->l:Z

    return p0
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lj1/m;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lj1/m;->l:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lj1/m;->g:Landroid/content/Context;

    iget-object v1, p0, Lj1/m;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lj1/m;->h:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lj1/m;->l:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherClient"

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean p0, p0, Lj1/m;->l:Z

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {p0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
