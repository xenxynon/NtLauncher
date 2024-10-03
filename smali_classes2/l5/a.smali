.class public Ll5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/Boolean;


# instance fields
.field private a:Lcom/sysaac/haptic/AACHapticUtils;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ll5/a;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5/a;->b:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ReleaseThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ll5/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Ll5/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ll5/a;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ll5/a;)Lcom/sysaac/haptic/AACHapticUtils;
    .locals 0

    iget-object p0, p0, Ll5/a;->a:Lcom/sysaac/haptic/AACHapticUtils;

    return-object p0
.end method

.method static synthetic b(Ll5/a;Lcom/sysaac/haptic/AACHapticUtils;)Lcom/sysaac/haptic/AACHapticUtils;
    .locals 0

    iput-object p1, p0, Ll5/a;->a:Lcom/sysaac/haptic/AACHapticUtils;

    return-object p1
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ll5/a;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic d(Ll5/a;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Ll5/a;->d:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic e(Ll5/a;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Ll5/a;->d:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic f(Ll5/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Ll5/a;->e:Landroid/os/Handler;

    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Ll5/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_intensity"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrateIntensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtUIVibrateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/vendor/etc/richtapresources/"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/vendor/etc/richtapresources/strong/"

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/vendor/etc/richtapresources/weak/"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h()V
    .locals 4

    iget-object v0, p0, Ll5/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "NtUIVibrateUtils"

    if-nez v0, :cond_0

    const-string p0, "playSwitchVibrate: touch vibrate settings is off !"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "playSwitchVibrate: AACHapticUtils get instance!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sysaac/haptic/AACHapticUtils;->getInstance()Lcom/sysaac/haptic/AACHapticUtils;

    move-result-object v0

    iput-object v0, p0, Ll5/a;->a:Lcom/sysaac/haptic/AACHapticUtils;

    invoke-virtual {v0}, Lcom/sysaac/haptic/AACHapticUtils;->isSupportedRichTap()Z

    move-result v0

    iput-boolean v0, p0, Ll5/a;->c:Z

    if-nez v0, :cond_1

    const-string p0, "playSwitchVibrate: not support rich tap !"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "NT_OnOff_button.he"

    invoke-direct {p0, v2}, Ll5/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Could not get vibrate file in vendor folder. Get from system folder again."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/richtapresources/NT_OnOff_button.he"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "playSwitchVibrate: AACHapticUtils init!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Ll5/a;->a:Lcom/sysaac/haptic/AACHapticUtils;

    iget-object v3, p0, Ll5/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sysaac/haptic/AACHapticUtils;->init(Landroid/content/Context;)Lcom/sysaac/haptic/AACHapticUtils;

    iget-object p0, p0, Ll5/a;->a:Lcom/sysaac/haptic/AACHapticUtils;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sysaac/haptic/AACHapticUtils;->playPattern(Ljava/io/File;I)V

    const-string p0, "playSwitchVibrate: playPattern"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "Could not find vibrate file"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Ll5/a;->e:Landroid/os/Handler;

    new-instance v1, Ll5/a$a;

    invoke-direct {v1, p0}, Ll5/a$a;-><init>(Ll5/a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
