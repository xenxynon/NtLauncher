.class Ll5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Ll5/a;


# direct methods
.method constructor <init>(Ll5/a;)V
    .locals 0

    iput-object p1, p0, Ll5/a$a;->g:Ll5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0}, Ll5/a;->a(Ll5/a;)Lcom/sysaac/haptic/AACHapticUtils;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ll5/a;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "NtUIVibrateUtils"

    if-eqz v0, :cond_0

    const-string v0, "release AACHapticUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "playSwitchVibrate: AACHapticUtils stop!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0}, Ll5/a;->a(Ll5/a;)Lcom/sysaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sysaac/haptic/AACHapticUtils;->stop()V

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0, v1}, Ll5/a;->b(Ll5/a;Lcom/sysaac/haptic/AACHapticUtils;)Lcom/sysaac/haptic/AACHapticUtils;

    :cond_1
    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0, v1}, Ll5/a;->e(Ll5/a;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0}, Ll5/a;->d(Ll5/a;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0}, Ll5/a;->d(Ll5/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0}, Ll5/a;->d(Ll5/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {v0, v1}, Ll5/a;->f(Ll5/a;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object p0, p0, Ll5/a$a;->g:Ll5/a;

    invoke-static {p0, v1}, Ll5/a;->e(Ll5/a;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    :cond_2
    return-void
.end method
